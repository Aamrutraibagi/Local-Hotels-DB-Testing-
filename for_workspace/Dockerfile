# Use the official MySQL 8.0 image
FROM mysql:8.0

# Set environment variables
ENV MYSQL_DATABASE=hotels
ENV MYSQL_USER=crio-learner
ENV MYSQL_ROOT_PASSWORD=learner-crio
ENV MYSQL_PASSWORD=learner-crio
# Add your SQL script
COPY ./hotels.sql /docker-entrypoint-initdb.d/

# Expose the port MySQL will be accessible on
EXPOSE 8083