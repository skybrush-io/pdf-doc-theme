#!/bin/sh
docker run --rm -it -v $(pwd):/documents/ asciidoctor/docker-asciidoctor \
	asciidoctor-pdf \
		-a icons=font \
		-a imagesdir=./assets/images \
		-a revdate=`date +%Y-%m-%d` \
		-a pdf-theme=book-theme.yml \
		book.adoc
