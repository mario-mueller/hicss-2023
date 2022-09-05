# hicss-2023


``pandoc -s HICSS-2023-Submission.docx -t markdown+grid_tables --extract-media=./ --markdown-headings=atx --wrap=preserve -o manuscript.md``

``pandoc -s manuscript.md --citeproc --bibliography=/home/mmmmario/Dropbox/library/bib/library.bib -o manuscript.pdf``

``npx write-good *.md``

``proselint *.md``

https://github.com/get-alex/alex

https://github.com/errata-ai/vale