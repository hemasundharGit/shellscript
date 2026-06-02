#!/bin/bash

# Deploy Flask + MySQL Two-Tier Application

code_clone() {
echo "Cloning the Flask application..."

```
if [ -d "flask-app" ]; then
    echo "Code directory already exists."
    cd flask-app || exit 1
else
    git clone https://github.com/<your-github-username>/<your-repository>.git flask-app || {
        echo "Failed to clone repository."
        return 1
    }

    cd flask-app || exit 1
fi
```

}

install_requirements() {
echo "Installing Docker and Git..."

```
sudo apt-get update

sudo apt-get install -y docker.io git || {
    echo "Failed to install dependencies."
    return 1
}
```

}

required_restarts() {
echo "Starting Docker service..."

```
sudo systemctl start docker
sudo systemctl enable docker

sudo chown $USER /var/run/docker.sock || {
    echo "Failed to configure Docker permissions."
    return 1
}
```

}

deploy_mysql() {
echo "Creating Docker network..."

```
docker network create twotier 2>/dev/null || true

echo "Starting MySQL container..."

docker rm -f mysql 2>/dev/null || true

docker run -d \
    --name mysql \
    -v mysql-data:/var/lib/mysql \
    --network twotier \
    -e MYSQL_DATABASE=mydb \
    -e MYSQL_ROOT_PASSWORD=admin \
    -p 3306:3306 \
    mysql:5.7 || {
        echo "Failed to start MySQL container."
        return 1
    }

echo "Waiting for MySQL to initialize..."
sleep 30
```

}

deploy_flask() {
echo "Building Flask image..."

```
docker build -t flaskapp . || {
    echo "Docker build failed."
    return 1
}

docker rm -f flaskapp 2>/dev/null || true

echo "Starting Flask container..."

docker run -d \
    --name flaskapp \
    --network twotier \
    -e MYSQL_HOST=mysql \
    -e MYSQL_USER=root \
    -e MYSQL_PASSWORD=admin \
    -e MYSQL_DB=mydb \
    -p 5000:5000 \
    flaskapp:latest || {
        echo "Failed to start Flask container."
        return 1
    }
```

}

verify_deployment() {
echo "Running containers:"
docker ps
}

echo "********** FLASK APPLICATION DEPLOYMENT STARTED **********"

code_clone || exit 1

install_requirements || exit 1

required_restarts || exit 1

deploy_mysql || exit 1

deploy_flask || exit 1

verify_deployment

echo "********** DEPLOYMENT COMPLETED SUCCESSFULLY **********"
