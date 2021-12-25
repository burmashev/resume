FROM ubuntu:18.04

COPY ./CV/main.tex /resume/

RUN apt-get update -y

RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y \ 
 texlive-base \
 texlive-fonts-recommended \
 texlive-latex-recommended \
 texlive-fonts-extra \
 texlive-latex-extra

CMD pdflatex ./resume/main.tex -interactiop=nonstopmode
