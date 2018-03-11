PROJECT-PATH := $(shell pwd)

html:
    docker run -v $(PROJECT-PATH):/source jagregory/pandoc -f markdown -t html5 resume.md -o myfile.html


pdf:
    docker run -v $(PROJECT-PATH):/source jagregory/pandoc -f markdown -t latex resume.md -o myfile.pdf
