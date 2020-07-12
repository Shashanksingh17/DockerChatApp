FROM python:3.6

RUN mkdir newchatApp
copy ./new_chatapp/ /newchatApp

WORKDIR /newchatApp
RUN pip3 install -r requirements.txt

EXPOSE 8000
WORKDIR /newchatApp/fundoo
RUN chmod +x run.sh

CMD ["./run.sh"]
