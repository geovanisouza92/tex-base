# TeX base files for document writing

This is an basic structure for document writing using TeX / LaTeX in brazilian ABNT patterns.

## How to setup enviroment

Disclaimer: This process will take some time.

Using Ubuntu:

- Install texlive package and dependencies
- Install abntex package

<!-- Using Windows: -->

<!-- Using Vagrant: -->

## How to make your document

- Edit ```meta-information.tex``` and put your information and your work information (author, subject, title)
- In the ```approval-page.tex``` put the approvers of your work like example.
- In the ```dedication-page.tex``` put your dedication
- In the ```epigraph-page.tex``` put your epigraphs
- In the ```resume-page.tex``` put your resume and in ```abstract-page.tex``` put the translated resume

Other pre-textual chapters like summary are automagically bounded.

Below ```\sumario``` include your work jobs (Is necessary know TeX writing).

And, finally, include in ```references.bib``` your bibtex references to use ```\cite{some-reference}``` in text. Don't worry, the citations will be in the ABNT pattern so, just cite them.

## How to disable some pages

If you don't want an specific page on your work, add an ```%``` on the begin of line that include it on ```main.tex``` file. E.g.:

Change this

```\include{approval-page}```

to this

```% \include{approval-page}```

## How to make things done

**If you using Make**:

In the terminal, type ```make``` and wait the make.pdf file appear. It's done.

<!-- **If you using Tex Maker**: -->
