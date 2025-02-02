# Use an official Python base image
FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install virtualenv

RUN python -m venv /app/venv


RUN /app/venv/bin/pip install --upgrade pip && \
    /app/venv/bin/pip install -r requirements.txt


ENV PATH="/app/venv/bin:$PATH"

CMD ["python", "main.py"]




# docker run -p 5000:5000  my-docker-app
# docker run -d -p 5000:5000 my-docker-app





# FROM python:3.9-slim

# WORKDIR /app

# COPY /

# # Install virtualenv
# RUN pip install virtualenv

# # Create a virtual environment inside the container
# RUN python -m venv /app/venv

# # Activate the virtual environment and install dependencies
# RUN /app/venv/bin/pip install --upgrade pip && \
#     /app/venv/bin/pip install -r requirements.txt

# # Set the virtual environment as the default Python environment
# ENV PATH="/app/venv/bin:$PATH"

# # Command to run the application
# CMD ["python", "main.py"]
