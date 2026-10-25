port := "8000"
host := "127.0.0.1"

# Serve the ASCII table page (override with: just port=9000 host=0.0.0.0 serve)
serve:
    @echo "Serving on http://{{host}}:{{port}}"
    python3 -m http.server {{port}} --bind {{host}} --directory {{justfile_directory()}}/public
