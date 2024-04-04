FROM python

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
copy . .

EXPOSE 80
#python 프로젝트는 이 부분만 변경
CMD ["python","manage.py","runserver","0.0.0.0:80"]