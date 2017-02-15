\version "2.18.2"
\language "english"

\header {
  title = "placeholder"
  composer = "Alex Grant"
  opus = "Op. 5"

}



upper = \relative c'' {
  \clef treble
  \key c \minor
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket

  c1 |

}

lower = \relative c {
  \clef bass
  \key c \minor
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket

  c1 |
 
}



\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    >>
  \layout { }
  \midi { }
}