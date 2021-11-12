reformat:
	poetry run isort .
	poetry run black .

lint:
	poetry run flake8

models/cc.fa.300.bin:
	mkdir -p ./models
	aria2c -x 8 -o "$@.gz" https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc.fa.300.bin.gz
	gunzip models/cc.fa.300.bin.gz
