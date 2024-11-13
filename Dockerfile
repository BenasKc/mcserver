# Dockerfile
# Use OpenJDK as the base image for Java runtime
FROM openjdk:24-jdk-bullseye

# Set the working directory in the container
WORKDIR /minecraft

# Copy the Minecraft server .jar file if it's already in the project directory
# Or you can download the jar file directly (replace the URL with the correct hash)
COPY server.jar /minecraft/server.jar
COPY server.properties /minecraft/server.properties

# Accept the Minecraft EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565

# Set the command to run the Minecraft server
CMD ["java", "-Xmx400M", "-Xms400M", "-jar", "server.jar", "nogui"]

