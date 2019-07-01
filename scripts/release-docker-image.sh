set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t lcnotes/blog-music-app:${TRAVIS_TAG} .

docker push lcnotes/blog-music-app:${TRAVIS_TAG}