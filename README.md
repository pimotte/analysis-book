# analysis-book

Change the working directory to './book/'
Build:
```
lake exe analysis-book
```

View:
```
python3 -m http.server 8880 --directory _site
```
then visit `http://localhost:8880`