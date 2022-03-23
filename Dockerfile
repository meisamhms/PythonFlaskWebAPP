FROM python:3.8-slim-buster

RUN useradd -ms /bin/bash worker
USER worker
WORKDIR /home/worker

COPY --chown=worker:worker requirements.txt requirements.txt
RUN pip3 install --user -r requirements.txt
ENV PATH="/home/worker/.local/bin:${PATH}"

COPY --chown=worker:worker . .
LABEL maintainer="Meisam Sharahi <meisam.bit@outlook.com>" \
      version="1.0.0"


EXPOSE 5000
ENTRYPOINT [ "python" ]

CMD [ "server.py" ]