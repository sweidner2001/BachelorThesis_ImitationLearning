\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{verlaengerungAbschlussarbeit}[2024/11/20]


\PassOptionsToPackage{ngerman}{babel}


\ProcessOptions\relax

\LoadClass[11pt, a4paper]{article}

%Packages definieren
\RequirePackage{ifxetex,fontspec}
\RequirePackage{xltxtra}

\setmainfont[Mapping=tex-text, BoldFont=MetaOT-Bold]{MetaOT}

\RequirePackage{parskip}

\RequirePackage{geometry}
\geometry{a4paper, left=24mm, right=17.5mm,  top=20mm, bottom=15mm}

\RequirePackage{graphicx}
\graphicspath{{./images/}}
\RequirePackage{ifthen}
\RequirePackage{hyperref,wasysym}

\RequirePackage{enumerate}
\RequirePackage{tikz}
\RequirePackage{chngcntr}

\RequirePackage{fancyhdr}
\RequirePackage{ragged2e}

\fancyhf{}

%Ausmaßen von Kopf-und Fußzeilen
\pagestyle{fancy}
\setlength{\textheight}{610pt}
\setlength{\parindent}{0in}
\setlength{\headheight}{80pt}
\setlength{\headsep}{0.2cm}

\renewcommand{\headrulewidth}{0pt}


%Kopf-und Fußzeilen einstellen

\rhead{\includegraphics[width=0.4\linewidth]{logo.jpg}}

