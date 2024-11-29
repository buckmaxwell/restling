# Start with the official PostgreSQL image
FROM postgres:15-alpine

# Install dependencies required for building pgjwt
RUN apk update && apk add --no-cache \
    postgresql-dev \
    build-base \
    git \
    curl \
    && rm -rf /var/cache/apk/*

# Clone and build pgjwt from source
RUN git clone https://github.com/michelp/pgjwt.git /pgjwt \
    && cd /pgjwt \
    && make && make install \
    && rm -rf /pgjwt

# Initialize the extension by creating it in PostgreSQL
RUN echo "CREATE EXTENSION IF NOT EXISTS pgjwt;" > /docker-entrypoint-initdb.d/create-pgjwt-extension.sql

# Expose the default Postgres port
EXPOSE 5432
