#Using official python3 docker container
FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app


#Copy source code to working directory
COPY . app.py /app/

#Install packages from requirements.txt
RUN pip install --upgrade pip=="21.1.1"  --user && \
    pip install --trusted-host pypi.python.org -r requirements.txt --user