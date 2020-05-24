#!/usr/bin/env bash
# add a midi stanza to all lilypond files to force creation of midi files
find . -iname "*.ly" -exec gsed -i 's/.score {/&\n  \\midi { }/'  {} \;
