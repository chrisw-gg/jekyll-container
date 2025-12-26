Repository for a Docker container of Jekyll 3.2.1

# Pull latest

docker pull ghcr.io/chrisw-gg/jekyll-container:main

# Build site (outputs to _site)

docker run --rm --volume "$(pwd):/app" ghcr.io/chrisw-gg/jekyll-container:main jekyll build