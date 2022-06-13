FROM python:3.8

RUN apt update
RUN apt install python3

# set the working directory in the container
WORKDIR C:/Users/zmoha/OneDrive/Bureau/tp2DevOPS

COPY app.py ./

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# command to run on container start
CMD [ "python3", "./app.py" ]