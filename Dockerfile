FROM python:3.9

ENV STUDENT_ID=2018312146

RUN mkdir /workspace/
RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

COPY . /workspace/

WORKDIR /workspace

ENTRYPOINT ["uvicorn"]
CMD ["main:app","--host","0.0.0.0","--port","80"]
