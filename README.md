# qu-handout: Course Handout LaTeX Class and Template

This is a LaTeX template for making simple handouts for courses or other technical purposes.

## Example Output

See the [example PDF output](https://github.com/botprof/qu-handout/blob/main/qu-handout-example.pdf) included in this repository.

## Dependencies

This template requires a number of packages, each loaded in the [qu-handout.cls](qu-handout.cls) file.  Most notably, the Queen's standard font is the free font [Open Sans](https://fonts.google.com/specimen/Open+Sans), which this template incorporates by using the [opensans package](https://tug.org/FontCatalogue/opensans/).  If you prefer a different font, you can do that in the [qu-handout.cls](qu-handout.cls) by changing the appropriate lines.

### Code and Syntax Highlighting

This template includes functionality for syntax highlighting of code snippets using the [minted](https://www.ctan.org/pkg/minted) package.  Overleaf has a nice [introduction to minted](https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted).

Minted requires the installation of additional software, Pygments.  Section 2.1 of [the minted documentation](https://mirror.csclub.uwaterloo.ca/CTAN/macros/latex/contrib/minted/minted.pdf) describes how to install Pygments.  If you use macOS, the easiest way is probably to just [install Pygments using Homebrew](https://formulae.brew.sh/formula/pygments#default).

When running LaTeX and using minted, you must invoke it with the `-shell-escape` flag so that it can access Pygments.  For example, if you are using Visual Studio Code as an IDE with the LaTeX Workshop extension and compile your document using `latexmk`, then you can edit the `settings.json` file to include the flag, as shown in the example snippet below.

```json
"latex-workshop.latex.tools":[
    {
        "name": "latexmk",
        "command": "latexmk",
        "args": [
            "-shell-escape",
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "-outdir=%OUTDIR%",
            "%DOC%"
        ],
        "env": {}
    },
```

If you do not need this functionality, then you can simply comment out these lines shown below in the [qu-handout.cls](qu-handout.cls) file and be sure to not use minted commands in your document.

```latex
% For code (usually Python or C/C++)
\RequirePackage[]{minted}
\setminted[python]{linenos=true}
\setminted[c]{linenos=true}
\renewcommand\theFancyVerbLine{\sffamily\footnotesize\arabic{FancyVerbLine}}
\BeforeBeginEnvironment{minted}{\begin{snugshade}}
\AfterEndEnvironment{minted}{\end{snugshade}}
\newcommand*{\mintpy}[1]{\mintinline[bgcolor=shadecolor]{python}{#1}}
\newcommand*{\mintc}[1]{\mintinline[bgcolor=shadecolor]{c}{#1}}
```

## Contact the Author

[Joshua Marshall](https://www.ece.queensu.ca/people/j-marshall), PhD, PEng  
[Department of Electrical and Computer Engineering](https://www.ece.queensu.ca)  
[Queen's University](http://www.queensu.ca)  
Kingston, ON K7L 3N6 Canada  
+1 (613) 533-2921  
[joshua.marshall@queensu.ca](mailto:joshua.marshall@queensu.ca)

## License

The code associated with this class and template is subject to an [MIT License](LICENSE).

