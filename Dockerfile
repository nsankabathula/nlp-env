FROM ubuntu:latest
RUN apt-get update -y
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:jonathonf/python-3.6
#RUN apt-get update -y
RUN apt-get install -y python3.6 python3.6-dev python3-pip gcc build-essential 
#RUN apt-get install -y python-pip python-dev build-essential gcc # python 2.7
RUN apt-get update -y

RUN ls -altr
ADD ./ ./app
WORKDIR /app
ENV PATH /app/src:$PATH
RUN ls -altr
#VOLUME /usr/share/elasticsearch/data


RUN pip3 install --upgrade pip
RUN pip3 install -r rest-api-requirement.txt
RUN pip3 install tensorflow 
RUN pip3 install tensorflow-hub
RUN pip3 install flask-restful
RUN pip3 install flask-restful
RUN python3 -m spacy download en_core_web_lg
ENTRYPOINT ["python3"]
#CMD ["bash"]
CMD ["src/rest_api.py"]
