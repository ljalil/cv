\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}

\LoadClass[12pt, a4]{extarticle}
\RequirePackage[left=.8in,right=.8in,top=.8in,bottom=.8in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{helvet}
\RequirePackage{tabto}
\RequirePackage{ifthen}
\setlength\parindent{0pt}

\renewcommand\familydefault{\sfdefault}
\pagestyle{empty}
\setlength{\parindent}{0em}
\titleformat{\section}{\large\raggedright}
{}{0em}
{}
[\vspace{-.1em}\titlerule\vspace{-.4em}]

\newcommand{\@tabspace}{\tabto{9em}}
\newcommand{\@minitabspace}{\tabto{6em}}
\newcommand{\@fromdate}[1]{{#1}}
\newcommand{\@todate}[1]{{#1}}

\newcommand{\makedaterange}{\@fromdate\ifthenelse{\equal{\@fromdate}{}}{}{\textendash}\@todate}

\newcommand{\dates}[2][]{\renewcommand{\@fromdate}{#1}\renewcommand{\@todate}{#2}}


%================== Me ================== 
\renewcommand{\@author}{}
\newcommand{\@phone}{}
\newcommand{\@address}{}
\newcommand{\@email}{}

\renewcommand{\author}[1]{\renewcommand{\@author}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\address}[1]{\renewcommand{\@address}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\renewcommand{\maketitle}{
\LARGE \textsc{\@author} \normalsize\\
\small \@address{ - }\@email{ - }\@phone
}


%================== Education ================== 
\newcommand{\@degreetitle}{}
\newcommand{\@curriculum}{}
\newcommand{\@thesis}{}
\newcommand{\institution}[1]{\textbf{#1}\\}
\newcommand{\degreetitle}[1]{\renewcommand{\@degreetitle}{#1}}
\newcommand{\curriculum}[1]{\renewcommand{\@curriculum}{#1}}
\newcommand{\thesis}[1]{\renewcommand{\@thesis}{#1}}
\newenvironment{degree}{}{
\makedaterange\@tabspace\@degreetitle{}{, }\@curriculum\ifthenelse{\equal{\@thesis}{}}{\\}{{\\\@tabspace\small Thesis: }\@thesis}}

%================== Internships ================== 
\newcommand{\@internshipcompany}{}
\newcommand{\@internshipdivision}{}
\newcommand{\@internshiplocation}{}

\newcommand{\company}[1]{\renewcommand{\@internshipcompany}{#1}}
\newcommand{\location}[1]{\renewcommand{\@internshiplocation}{#1}}
\newcommand{\division}[1]{\renewcommand{\@internshipdivision}{#1}}

\newenvironment{internship}{}{ \makedaterange\@tabspace
\@internshipcompany\ifthenelse{\equal{\@internshipdivision}{}}{}{, \@internshipdivision}\ifthenelse{\equal{\@internshiplocation}{}}{}{, \@internshiplocation}}

%================== Extracurricular Activities  ================== 
\newcommand{\@activityentity}{}
\newcommand{\@activitydescription}{}
\newcommand{\activityentity}[1]{\renewcommand{\@activityentity}{#1}}
\newcommand{\activitydescription}[1]{\renewcommand{\@activitydescription}{#1}}
\newenvironment{activity}{}{\makedaterange\@tabspace\textbf{\@activityentity}\\\@tabspace\@activitydescription}
%================== Projects ================== 
\newcommand{\@projectname}{}
\newcommand{\@projectdescription}{}
\newcommand{\projectname}[1]{\renewcommand{\@projectname}{#1}}
\newcommand{\projectdescription}[1]{\renewcommand{\@projectdescription}{#1}}
\newenvironment{project}{}{
\textbf{\@projectname} \@tabspace \@projectdescription
}

%================== Languages ================== 
\newcommand{\@spokenlanguagename}{}
\newcommand{\@spokenlanguagelevel}{}
\newcommand{\spokenlanguagename}[1]{\renewcommand{\@spokenlanguagename}{#1}}
\newcommand{\spokenlanguagelevel}[1]{\renewcommand{\@spokenlanguagelevel}{#1}}
\newenvironment{spokenlanguage}{}{
\textbf{\@spokenlanguagename}\@minitabspace\@spokenlanguagelevel
}

%================== Skills ================== 
\newcommand{\@skillname}{}
\newcommand{\@skilldescription}{}
\newcommand{\skillname}[1]{\renewcommand{\@skillname}{#1}}
\newcommand{\skilldescription}[1]{\renewcommand{\@skilldescription}{#1}}
\newenvironment{skill}{}{
\textbf{\@skillname}\@tabspace\@skilldescription
}

