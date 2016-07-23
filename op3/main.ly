\version "2.18.2"

\header {
  title = ""
  composer = "Alex Grant"
  opus = "Op. 3"
}

upper = \relative c'' {
  \clef treble
  \key ges \major
  \time 4/4

  g2 g 
}

lower = \relative c {
  \clef bass
  \key ges \major
  \time 4/4

  g2 g
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}