FROM python:3.14-rc-slim-bookworm
WORKDIR /usr/src/app
COPY . .

EXPOSE 8000

RUN make install-python-requirements
RUN make generate-site
ENTRYPOINT ["make", "serve"]