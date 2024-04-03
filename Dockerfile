# Use a base image
FROM ubuntu:20.04

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN apt-get update && apt-get install -y fortune-mod cowsay netcat

# Add ENV PATH
ENV PATH="/usr/games:${PATH}"

# Expose port 4499 for the container
EXPOSE 4499

# Command to run the application
CMD [ "bash", "wisecow.sh" ]