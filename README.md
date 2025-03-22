# node-js-application
🚀 Node.js Application with Docker

This project is a Node.js Express application designed to serve a simple REST API that returns a success message. It uses Docker to simplify the deployment process and provides a containerized environment that ensures consistent performance across different systems.

📄 Project Overview
✅ Purpose:
This application demonstrates how to set up a basic Node.js Express server.

It responds with a JSON object when accessed at the root URL (/).

It uses Docker to containerize the application, making it easy to build and run in any environment.

🔥 Key Features:
Lightweight and fast with Express.js.

Dockerfile included for easy containerization.

Automatically installs required dependencies with npm install.

Configurable port using environment variables.

Suitable for quick API prototyping or serving lightweight applications.

📚 Project Structure
bash
Copy
Edit
/node-js-application
├── /node_modules        # Node modules directory (auto-generated)
├── Dockerfile           # Docker configuration file
├── index.js             # Main application file
├── package.json         # Project dependencies and metadata
├── package-lock.json    # Auto-generated lock file
└── README.md            # Project documentation
🖥️ Prerequisites
Before running this application, make sure you have the following installed:

Node.js: v18.20.2 or higher

NPM: v10.9.2 or higher

Docker: v23 or higher (if using Docker to run the application)

⚡️ Installation Guide
Follow these steps to set up the project on your local machine:

📝 Step 1: Clone the Repository
bash
Copy
Edit
git clone https://github.com/username/repository-name.git
➡️ Replace username and repository-name with your actual GitHub details.

📂 Step 2: Navigate to the Project Directory
bash
Copy
Edit
cd repository-name
📦 Step 3: Install Dependencies
bash
Copy
Edit
npm install
This will install all required packages listed in package.json.

▶️ Step 4: Run the Application
bash
Copy
Edit
npm start
✅ The server will start running on http://localhost:8000.

🐳 Running the Application Using Docker
If you prefer to run the application in a Docker container, follow these steps:

📦 Step 1: Build Docker Image
bash
Copy
Edit
docker build -t node-js-app .
▶️ Step 2: Run Docker Container
bash
Copy
Edit
docker run -p 8000:8000 node-js-app
✅ The application will be accessible at:

arduino
Copy
Edit
http://localhost:8000/
🔥 Testing the Application
Access the API
Open your browser or use a tool like Postman or curl to make a request:

nginx
Copy
Edit
GET http://localhost:8000/
✅ Response:

json
Copy
Edit
{
    "status": "Success",
    "message": "Hello from express server"
}
🛠️ Dockerfile Explained
Dockerfile Overview
Dockerfile
Copy
Edit
# Base image
FROM node:23.10.0-alpine3.21

# Set working directory
WORKDIR /home/app/

# Copy package files for dependency installation
COPY package* .

# Install dependencies
RUN npm install

# Copy application files to the container
COPY index.js index.js
COPY Dockerfile Dockerfile

# Expose port 8000
EXPOSE 8000

# Run the application
CMD ["npm", "start"]
✅ Key Points:

Uses a lightweight node:23.10.0-alpine3.21 base image.

Installs project dependencies with npm install.

Exposes port 8000 to handle incoming requests.

Starts the application with npm start.

🎯 Conclusion
This project is a simple yet effective demonstration of a Node.js Express application running inside a Docker container. It is a great starting point for anyone looking to learn how to:

Build and run a REST API using Node.js and Express.

Use Docker to create portable and consistent environments.









