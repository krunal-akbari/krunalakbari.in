# Use the Hugo extended version base image
FROM klakegg/hugo:ext-alpine

# Set the working directory inside the container
WORKDIR /site

# Expose the default Hugo port
EXPOSE 1313

# Command to run Hugo server
CMD ["hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://localhost", "--buildDrafts", "--watch"]

