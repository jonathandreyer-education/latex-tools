LATEXMK=latexmk
LATEXMK_OPTS=-pdf -pdflatex="pdflatex -interaction=nonstopmode" -bibtex

.PHONY: default help pdf clean final

default:
	$(LATEXMK) $(LATEXMK_OPTS) -silent

help:
	@echo ""
	@echo "This Makefile creates the PDF by using 'latexmk'"
	@echo "  make             : Generate PDF"
	@echo "  make verbose     : Show output from latex compiler"
	@echo "  make clean       : Delete temporary files"
	@echo "  make final       : Generate PDF without temporary files"
	@echo ""

clean:
	$(LATEXMK) -C -bibtex

verbose:
	$(LATEXMK) $(LATEXMK_OPTS) -verbose

final: default
	$(LATEXMK) -c -bibtex
