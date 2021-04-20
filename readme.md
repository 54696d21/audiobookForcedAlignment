# Audiobook forced aligner

- aeneas forced aligner https://github.com/readbeyond/aeneas : currently used
- DSAlign forced aligner: might be worth trying
- mp3cat: licensed under the Unlicense from https://github.com/dmulholl/mp3cat

## process:

1. make whole audiobook to one file `mp3cat *.mp3 -o "out.mp3"` (must be built from mp3cat.go)
2. convert book to 16khz `./convertMono.sh out.mp3`
3. `ebook-convert mybook.epub mybook.txt` OR `pdftotext mybook.pdf out.txt`
4. manually delete chapter overview and copyright information from top of the book (can be improved with some NLP in the future)
5. `./forcedAlign.sh in.wav in.txt` -> writes out.srt

to be continued ...
