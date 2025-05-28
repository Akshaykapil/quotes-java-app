# Base Image
FROM openjdk:17-jdk-alpine

# Working directory for app

WORKDIR /app 

# Copy the Code to create app from host to container

COPY src/Main.java /app/Main.java

COPY quotes.txt /app/quotes.txt

# Run the command to install libs or to compile code

RUN javac Main.java

# Expose the port

EXPOSE 8000

# Serve the app to keep it running

CMD ["java","Main"]

