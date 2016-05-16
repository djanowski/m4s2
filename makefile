all: $(patsubst notes/%.html, public/%, $(wildcard notes/*.html)) $(patsubst notes/%.html, public/%/index.html, $(wildcard notes/*.html))

public/%/index.html: notes/%.html tmpl/layout.html
	./bin/build $< tmpl/layout.html > $@

public/%:
	mkdir -p $@

clean:
	rm public/*.html
