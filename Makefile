

clean:
	rm -rf build dist *.egg-info


setup:
	pip install wheel twine


.PHONY: dist
dist: setup clean
	python setup.py sdist bdist_wheel


.PHONY: push
push: dist
	twine upload dist/*
