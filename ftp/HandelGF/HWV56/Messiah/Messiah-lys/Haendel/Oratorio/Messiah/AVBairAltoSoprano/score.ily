\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \instrumentName \markup "Violino I"
        \global \clef "treble" \includeNotes "violino1" >>
      \new Staff << 
        \instrumentName \markup "Violino II"
        \global \clef "treble" \includeNotes "violino2" >>
      \new Staff << 
        \instrumentName \markup Viola
        \global \clef "alto" \includeNotes "viola" >>
    >>
    \new Staff \withLyrics <<
        \characterName \markup \center-column \smallCaps { Alto Soprano }
        \global \clef "treble" \includeNotes "valto-soprano"
    >> \includeLyrics "lyrics"
    \new Staff <<
        \instrumentName \markup Bassi
        \global \clef "bass" \includeNotes "bassi"
        \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}