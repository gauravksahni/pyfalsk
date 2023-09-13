ARG tag
FROM python:$tag
LABEL maintainer=Gaurav
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 500
CMD python ./app.py

#docker build --buld-arg tag=slim-bullseye -t py-flask . 
#pass the arg.
