# analysis-book

Change directory to `analysis`
Build the doc-gen
```
lake exe Analysis:docs
```

Change the working directory to `./book/`
Build:
```
lake exe analysis-book
```

View:
```
python3 serve.py
```
then visit `http://localhost:8000`