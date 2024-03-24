export_pdf:
	python3 -m http.server --directory src --bind localhost 8000 &
	wkhtmltopdf http://localhost:8000 build/resume.pdf
	pkill python

.PHONY: export_pdf
