# Base image is Python
FROM python:3.6.7-slim

# Copy all the files
COPY . .

# Install all needed requirements
RUN pip install -r requirements.txt

# You need to specify Python file we're running
ENTRYPOINT ["python", app.py]

# You need to specify port where application is listening
EXPOSE 5000
