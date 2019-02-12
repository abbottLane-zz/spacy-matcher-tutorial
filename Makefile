
pip := venv/bin/pip
python:= venv/bin/python

venv:
	python3 -m venv venv

build: venv
	$(pip) install nltk
	$(pip) install jupyter
	$(pip) install ipykernel
	$(pip) install spacy
	$(python) -m spacy download en
	venv/bin/ipython kernel install --user --name=matcher_demo


run:
	venv/bin/jupyter notebook

clean: 
	rm -R venv
