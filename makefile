build: clean
	@echo "Building Hugo site..."
	hugo
	@echo "Rebuilding Docker image..."
	docker build -t b2-blogs:v0.2.0 .

clean:
	@echo "Cleaning up..."
	rm -rf hugo-site/public
