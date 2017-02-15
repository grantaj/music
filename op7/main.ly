\version "2.18.2"
\language "english"

\header {
  title = "placeholder"
  composer = "Alex Grant"
  opus = "Op. 7"

}



upper = \relative c'' {
  \clef treble
  \key c \major
  \time 5/4
  \set Staff.pedalSustainStyle = #'bracket

  g!8( b!8) r2 bf16( r8.)  d!16-. r8.  |
  r4 f,!8( a8) r4 g16( r8.) c!16-. r8. |
  ds,8( g!8) r2 fs16( r8.) b16-. r8.   |
  cs,8( f8) r4 e8( b8) r4 a'16-. r8. |
  b,8( ef8) r4 d8( a8) g'8-. r8  r4 |
  r1 r4 |
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 5/4
  \set Staff.pedalSustainStyle = #'bracket

  r4 \tuplet 3/2 { gs'8 ds'8 gs8} a,8-- c8-- r16( f,16) r8. e16-. ds16-. r16-. |
  \tuplet 3/2 {fs8 cs'8 fs8} r4 g,8-- bf8-- r16( ds,16) r8. d16-. cs16-. r16-. |
  r4 f!8-- gs8-- \tuplet 3/2 {e b' e} r16( cs,16) r8. c16-. a16-. r16-. |
  r4 ef'8-- fs8-- r4 \tuplet 3/2 {a8 d8 a'8} r16 bf,16-. g16-. r16-. |
  r4 df8-- e8-- r4. af16-. f16-. \tuplet 3/2 {g8 c8 g'8} |
  \tuplet 3/2 {f,8 bf8 f'8} a,8( df8) b8-- d8--  c16( g16) r8 r8 ef16-. r16 |
}



\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    >>
  \layout { }
  \midi { }
}