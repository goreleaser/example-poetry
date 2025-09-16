FROM python:3-alpine
ARG TARGETPLATFORM
ENTRYPOINT [ "python", "-m", "example" ]
COPY $TARGETPLATFORM/*.whl /tmp/
RUN pip install /tmp/*.whl
