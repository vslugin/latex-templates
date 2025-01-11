all: ex01 ex02 ex03 ex04

ex01:
	docker run --rm -i --user="$(id -u):$(id -g)" -v `pwd`/example01:/data -v `pwd`/fonts:/root/.fonts mingc/latex xelatex index.tex

ex02:
	docker run --rm -i --user="$(id -u):$(id -g)" -v `pwd`/example02:/data -v `pwd`/fonts:/root/.fonts mingc/latex xelatex index.tex

ex03:
	docker run --rm -i --user="$(id -u):$(id -g)" -v `pwd`/example03:/data -v `pwd`/fonts:/root/.fonts mingc/latex xelatex index.tex

ex04:
	docker run --rm -i --user="$(id -u):$(id -g)" -v `pwd`/example04:/data -v `pwd`/fonts:/root/.fonts mingc/latex xelatex index.tex

cli:
	docker run --rm -i -u root -v `pwd`/example01:/data -v `pwd`/fonts:/root/.fonts mingc/latex /bin/bash

clean:
	rm -rf `pwd`/example*/*.aux `pwd`/example*/*.out `pwd`/example*/*.toc `pwd`/example*/*.lo* `pwd`/example*/_minted-ex*

clean-all: clean
	rm -rf `pwd`/example*/*.pdf