.PHONY: doc clean ctan FORCE

extracted      = lgrmath.sty lgrmath.tex
auxiliaries    = lgrmath.aux lgrmath.fdb_latexmk lgrmath.fls \
                 lgrmath.log lgrmath.out
texfiles       = lgrmath.sty
sourcefiles    = lgrmath.dtx
docfiles       = README lgrmath.pdf
latexmk_cmd    = latexmk -e "\$$dvipdf = q/dvipdfmx %O -o %D %S/" -pdfdvi
shell_has_xattr  := $(shell command -v xattr 2> /dev/null)

$(extracted): lgrmath.dtx
	etex lgrmath.dtx

clean:
	rm -f $(auxiliaries)

doc: $(docfiles)
	@echo 'make doc done.'

lgrmath.pdf: $(extracted) Makefile
	$(latexmk_cmd) lgrmath
ifdef shell_has_xattr
	xattr -c lgrmath.pdf
endif

# ATTENTION à un truc comme ctanbuild/$(sourcefiles) !
# le ctanbuild/ ne s'applique qu'au premier !
lgrmath.zip: $(docfiles) $(sourcefiles) $(texfiles) Makefile \
                 ctanbuild/private.sh ctanbuild/makepdf.sh
	@echo 'Removing CTAN/lgrmath.zip if it exists!'
	rm -fr CTAN/lgrmath.zip
	rm -fr                ctanbuild/lgrmath
	rm -f                 ctanbuild/lgrmath.zip
	mkdir -p              ctanbuild/lgrmath
	chmod ugo+rwx         ctanbuild/lgrmath
	cp -a $(docfiles)     ctanbuild/
	cp -a $(sourcefiles)  ctanbuild/
	cd ctanbuild && ./private.sh && ./makepdf.sh
	cd ctanbuild && mv $(docfiles) $(sourcefiles) lgrmath/
	cd ctanbuild && rm lgrmath.*
	chmod -R ugo+r        ctanbuild/lgrmath
	@echo 'Listing submission files'
	ls -al                ctanbuild/lgrmath
	umask 0022 && cd ctanbuild && zip -r lgrmath.zip lgrmath
	@echo 'The lgrmath.zip is ready'
	@echo '********'
	@echo 'Test coverage is non-existent, improve that!'
	@echo '********'
	mv ctanbuild/lgrmath.zip CTAN/
	@echo 'New lgrmath.zip now moved to CTAN/ directory.'
	@echo '********'

ctan: lgrmath.zip

