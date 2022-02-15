#!/bin/bash

if [[ "${CI}" -eq "0" ]] ; then
  if VAL=$(grep -so "POSITION\\\_TITLE" cover_letter.tex) ; then
    echo "ERROR: $VAL found in cover_letter."
    exit 1
  fi

  if VAL=$(grep -so "TAILOR\\\_CONTENT" cover_letter.tex) ; then
    echo "ERROR: $VAL found in cover_letter."
    exit 1
  fi
fi
