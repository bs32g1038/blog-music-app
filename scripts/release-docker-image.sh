set -e

# 镜像版本
TAG=v2

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -f release-docker/Dockerfile -t lcnotes/blog-music-app:${TAG} .

docker push lcnotes/blog-music-app:${TAG}