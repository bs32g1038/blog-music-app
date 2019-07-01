set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t bs32g1038/blog-music-app:${TRAVIS_TAG} .

docker push bs32g1038/blog-music-app:${TRAVIS_TAG}