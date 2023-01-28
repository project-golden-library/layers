from public.ecr.aws/sam/build-python3.9:1.71.0-20230124190723-arm64

run mkdir /tmp/layer
workdir /tmp/layer
add requirements.txt /tmp/layer/requirements.txt

cmd ["pip", "install", "-r", "requirements.txt", "-t", "python"]

