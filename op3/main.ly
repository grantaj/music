\version "2.18.2"
\language "english"

\header {
  title = "Z5"
  composer = "Alex Grant"
  opus = "Op. 3"
}

upper = \relative c'' {
  \clef treble
  \key gf \major
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket

  <gf gf'>8(\sustainOn df'8  <gf, gf'> df')  eff( df gf df) |
  <f, af>8\sustainOff\sustainOn <bff gf> <f af> <bff gf> c bff af gf\sustainOff |
  <gf gf'>8 df'8  <gf, gf'> df'  eff df f, df' |
  <f, af>8 <bff gf> <f af> <bff gf> c bff af gf |
  <f af>8 <bff gf> <f af> <bff gf> c a f gf |
  <f af>8 <bff gf> <f af> <bff gf> df bff af gf |
  <f af>8 <bff gf> <f af> <bff gf> df c gf af |

  \key d \minor

  cs8 bf a  g  a bf a bf |
  cs8 bf a  g  fs g a bf |
  cs8 bf a  g  a bf a bf |
  cs8 bf a  g  a a~ a4 |

  \key a \major

  <a a'>8 e'  <a, a'> e'  f e a, e' |
  <bs ds>8 <cs e> <bs ds> <cs e> fs e ds cs |
  <a a'>8 e'  <a, a'> e'  f e d e |
  <bs ds>8 <cs e> <bs ds> <cs e> fs e ds cs |
  <bs ds>8 <cs e> <bs ds> <cs e> fs e ds cs |
  <bs ds>8 <cs e> <bs ds> <cs e> g' fs cs4 |
}

lower = \relative c {
  \clef bass
  \key gf \major
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket
  
  <gf gf'>2~ <gf gf' gf,,> |
  <gf'  f,>1  |
  <gf, gf'>2~ <gf gf' gf,,> |
  <gf'  f,>1 |
  <f  f,>1 |
  <ef ef,>1 |
  <df df,>1 |

  \key d \minor

  <d' d, d,> |
  <d cs, cs,> |
  <d d, d,> |
  <d bf, bf, >\sf |

  \key a \major

  <a a,>2~  <a a, a,>2 |
  <a gs,>1 |
  <a a,>2~  <a a, a,>2 |
  <a gs,>1 |
  <gs gs,>1 |
  <gf gf,>1 |
}


\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    >>
  \layout { }
  \midi { }
}