# 📅 Data Engineering - Modeling

This repository will 

**TL;DR**

1. [Clone the repository](https://github.com/knands42/Data-Engineering-Bootcamp/README.md).
2. [Start Postgres instance](https://github.com/knands42/Data-Engineering-Bootcamp/README.md#2%EF%B8%8F%E2%83%A3run-postgres).
3. [Connect to Postgres](https://github.com/knands42/Data-Engineering-Bootcamp/README.md#threeconnect-to-postgres-in-database-client) using your preferred database management tool.

For detailed instructions and more information, please refer to the step-by-step instructions below.

## 1️⃣ **Clone the repository**

- Clone the repo using the SSH link. This will create a new folder in the current directory on your local machine.

    ```bash
    git clone git@github.com:knands42/Data-Engineering-Modeling.git
    ```
  
- Navigate into the cloned repo using the command line:

    ```bash
    cd Data-Engineering-Modeling
    ```

## 2️⃣ **Run Postgres**

There are two methods to get Postgres running locally.

### 💻 **Option 1: Run on local machine**

1. Install Postgres
    - For Mac: Follow this **[tutorial](https://daily-dev-tips.com/posts/installing-postgresql-on-a-mac-with-homebrew/)** (Homebrew is really nice for installing on Mac)
    - For Windows: Follow this **[tutorial](https://www.sqlshack.com/how-to-install-postgresql-on-windows/)**
2. Run this command after replacing **`<computer-username>`** with your computer's username:

    ```bash
    psql -U <computer-username> postgres < data.dump
    ```

3. Set up DataGrip, DBeaver, or your VS Code extension to point at your locally running Postgres instance.
4. Have fun querying!

### 🐳 **Option 2: Run Postgres in Docker**

- Install Docker Desktop from **[here](https://www.docker.com/products/docker-desktop/)**.
- Copy **`example.env`** to **`.env`**:

    ```bash
    cp example.env .env
    ```

- Start the Docker Compose container:
    - If you're on Mac:

        ```bash
        make up
        ```

- A folder named **`postgres-data`** will be created in the root of the repo. The data backing your Postgres instance will be saved here.
- You can check that your Docker Compose stack is running by either:
    - Going into Docker Desktop: you should see an entry there with a drop-down for each of the containers running in your Docker Compose stack.
    - Running **`docker ps -a`** and looking for the containers with the name **`postgres`**.
- When you're finished with your Postgres instance, you can stop the Docker Compose containers with:

    ```bash
    make down
    ```

#### 💡 Additional Docker Make commands

- To restart the Postgres instance, you can run **`make restart`**.
- To see logs from the Postgres container, run **`make logs`**.

## Credits
This project was created to follow the lessons and solve exercises from [Data with Zach](https://www.youtube.com/@EcZachly_) bootcamp on YouTube.