
# Make the document!
default: *.tex
	latexmk -pdf main.tex

# Remove the LaTeX meta-data, logs, etc
.PHONY: tidy
tidy:
	latexmk -c

# Hard clean, including PDF output
.PHONY: clean
clean:
	latexmk -C

