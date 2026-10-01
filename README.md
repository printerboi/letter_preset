# Letter Preset

A reusable LaTeX letter preset that can be easily cloned and modified. Sender details, recipient details, letter content, and settings are kept in separate files so you can adapt the preset for different letters.

## Files

| File | Purpose |
| --- | --- |
| `brief.tex` | Main document. Loads the settings and data files and assembles the letter. |
| `absender.tex` | Sender details, including name, address, phone number, email address, and website. |
| `empfaenger.tex` | Recipient address, salutation, and optional reference details. |
| `inhalt.tex` | Letter date, subject, body, closing, and optional notes or enclosure information. |
| `einstellungen.tex` | LaTeX packages, layout settings, contact field visibility, and signature settings. |
| `assets/` | Directory for assets such as your signature image. |

## Usage

Clone or copy the preset, then replace the example details in `absender.tex` and `empfaenger.tex`. Edit `inhalt.tex` for your letter and adjust `einstellungen.tex` as needed.

The signature image is disabled by default. To enable it, add your image as `assets/unterschrift.png` and replace `\UnterschriftAnzeigenfalse` with `\UnterschriftAnzeigentrue` in `einstellungen.tex`. You can also change the image path and width there.

## Compilation

The document must be compiled with `latexmk`. Run the following command from the preset directory:

```sh
latexmk
```

You need `latexmk` and a LaTeX installation with the packages used by the preset.

The resulting PDF will be available in `target/` as `target/brief.pdf`.
