FROM python:3.9-slim-buster

# set the working directory in the container
WORKDIR /app

# copy the requirements file into the container
COPY . .

# install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# expose port 8000
EXPOSE 8000

# start the application server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
