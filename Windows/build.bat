cd build
docker build -t app/tnt:latest --build-arg PHP_VERSION_ARG=7.4  -f Dockerfile.linux . --no-cache
cd ..