# MU Computational Mathematics Group Presentation Theme (`mucomp`)

This repository contains the official LaTeX Beamer presentation template and style package (`mucomp.sty`) for the **MU Computational Mathematics** research group. It is designed to produce clean, professional, and interactive slides for academic presentations, seminars, and conferences.

## Repository Contents

*   **`mucomp.sty`**: The core LaTeX style package defining themes, colors, fonts, math environments, citations, and animation utilities.
*   **`sample.tex`**: A sample presentation showing all features of the `mucomp` template.
*   **`sample.pdf`**: The precompiled sample presentation output.
*   **`references.bib`**: The bibliography file containing citation entries.
*   **`MU_logo.png`**: The university logo used on the title slide.
*   **`RP2D1_frames/`**: Directory containing frame assets (PNGs) for showcasing the PDF animation helper.
*   **`.gitignore`**: Excludes temporary and auxiliary files generated during LaTeX compilation.

---

## Features

### 1. Unified Visual Theme & Fonts
*   **Theme Base**: Built on the minimal `Pittsburgh` Beamer theme with `beaver` color schemes.
*   **Typography**: Uses `Lato` as the default sans-serif font family and `newtxmath` for elegant mathematical typesetting.
*   **Clean Layout**: Thin footers, centered native title layout, and elegant title page divider lines in gold (`#B8962E`).

### 2. Custom Title Page Fields
Metadata controls are provided to easily display collaboration details and venue context:
*   `\coauthors{...}`: Lists joint presenters or co-authors.
*   `\conference{...}`: Prints the name of the conference or seminar.
*   `\minisymposium{...}`: Displays specific session or workshop details.

### 3. Customized Math Block Environments
Standard math environments are styled to use clean, rounded blocks with specific colors:
*   **Alerted Blocks** (Red theme): `theorem`, `lemma`, `corollary`, and `proposition`.
*   **Example Blocks** (Gray/Light red theme): `definition` and `mathremark`.

### 4. Frame-Local Footnote Citations
The package provides custom cite macros linked with `biblatex` (biber backend):
*   `\fcite{key1,key2}`: Automatically places superscript citation markers and adds the corresponding full citations directly to the current frame's footnote section.
*   `\fcitetext{key1,key2}`: Places the footnote citation text without automatically rendering a superscript marker (useful for custom spacing/pairing with `\footnotemark`).
*   Footnote counters automatically reset at the start of every frame, keeping numbering clean and frame-local.

### 5. High-Performance PDF Animation Utilities
Embed high-speed sequence animations using the `\pdfanim` command:
*   **Usage**: `\pdfanim[options]{prefix}{first}{last}`
*   **Options**: Supports `width`, `height`, `scale`, `fps`, `loop=true`, `autoplay=true`, and `controls`.
*   **Draft/Fast Mode**: Compile using the `draftanim` package option (`\usepackage[draftanim]{mucomp}`) to only load the first frame of animations. This dramatically reduces compile times during slide drafting.
*   **Ghostscript Compression**: Includes `\pdfanimCompressPDF[ebook]` to compress large animation-heavy output PDFs.

---

## How to Compile

To compile the presentation with full citation support, run the following commands in your terminal:

```bash
pdflatex sample.tex
biber sample
pdflatex sample.tex
pdflatex sample.tex
```

For fast drafting without compiling full interactive animations:
1. Edit `sample.tex` (or your document) to load the package with the `draftanim` flag:
   ```latex
   \usepackage[draftanim]{mucomp}
   ```
2. Compile with `pdflatex` directly (you can bypass `biber` if citations haven't changed).
