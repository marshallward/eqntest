all: README_rst2html.html README_pandoc.html

README_rst2html.html: README.rst
	rst2html $< $@

README_pandoc.html: README.rst
	pandoc -s --metadata title="Sample math render" --mathjax -f rst -t html $< -o $@

clean: README_*.html
	rm -f $^
