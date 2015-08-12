sk.ps : skripsie.dvi
	dvips -o sk.ps skripsie.dvi

skripsie.dvi : *.tex *.eps 
	latex skripsie.tex; latex skripsie.tex

