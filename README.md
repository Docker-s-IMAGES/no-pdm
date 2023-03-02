# no-pdm

![Docker Pull Count](https://img.shields.io/docker/pulls/abersh/no-pdm)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/abersh/no-pdm)

build image without python-pdm from a python-pdm project

```dockerfile
FROM abersh/no-pdm as requirements

FROM python:3.7

# ... yourself commands

COPY --from=requirements /src/requirements.txt .

RUN pip install -r requirements.txt

# ... yourself commands
```
