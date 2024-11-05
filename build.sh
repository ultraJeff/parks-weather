./mvnw package -DskipTests
docker buildx build --platform=linux/amd64 -f src/main/docker/Dockerfile.jvm -t jefrankl/parks-weather .
docker tag jefrankl/parks-weather quay.io/jefrankl/parks-weather
docker push quay.io/jefrankl/parks-weather