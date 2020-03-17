
deploy:
	#scotty  --website --bucket=www.localhost3000.org --update
	aws s3 sync . s3://www.localhost3000.org \
		--exclude ".git/*" \
		--exclude Makefile \
		--exclude README.md
	@echo "Done deploying"

serve:
	live-server --port=3000 . &> /tmp/server.log &
