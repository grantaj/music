\version "2.18.2"
\language "english"

\header {
  title = "Z5"
  composer = "Alex Grant"
  opus = "Op. 3"
}

arpeggioOne = 
  <<
    { \tuplet 3/2 {r8 bf df} \tuplet 3/2 {f df bf} \tuplet 3/2 {r8 bf df} \tuplet 3/2 {f df bf} }
    \\
    { f2 f2 }
  >>

arpeggioTwo = 
  <<
    { \tuplet 3/2 {r8 bf df} \tuplet 3/2 {gf ef bf}  \tuplet 3/2 {r8 bf df} \tuplet 3/2 {gf ef bf} }
    \\
    { gf2 gf2 }
  >>

upper = \relative c'' {
  \clef treble
  \key gf \major
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket

  <gf gf'>8(\sustainOn df'8  <gf, gf'> df')  eff( df gf, df') |
  <f, af>8 <bff gf> <f af> <bff gf> c\> bff af gf\! |
  
  <gf gf'>8(\sustainOff\sustainOn df'8  <gf, gf'> df')  eff( df f, df') |
  <f, af>8 <bff gf> <f af> <bff gf> c\> bff af gf\! |
  <f af>8\sustainOff\sustainOn <bff gf> <f af> <bff gf> c a f gf |
  <f af>8\sustainOff\sustainOn <bff gf> <f af> <bff gf> df bff af gf |
  <f af>8\sustainOff\sustainOn <bff gf> <f af> <bff gf> df c gf af\sustainOff |

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

  \key c \minor

  ef8 af, cf af bf af cf bf |
  ef8 af, bf af cf af bf bf |
  ef8 af, cf af bf af cf bf |
  ef8 af, bf af cf bf af4   |

  \key g \major

  fs8 g a b c d e fs |
  fs,8 g a b c[ b] fs'-.( g,-.) |
  fs8 g a b c[ b] fs'-.( fs,-.) |
  fs8 g a b fs'-.( fs,-.~ fs4) |

  \key gf \major

  f'8-.( f,-.)~ f4 <f' f,>2\fermata |
  <f f,>1\fermata

  <bf bf,>2-.( <bf bf,>2-.) | 
  <bf bf,>4-.~( <bf bf,>8)  bf8 a,2 |
  a2\fermata r2

 % ----------------------------------
 % Arpeggio section

  \repeat volta 2 {
  <bf' bf,>2 <bf bf,>2 |
  <bf bf,>2 <cf cf,>4 <bf bf,>4 |

  <gf gf,>2 <gf gf,>2 |
  <gf gf,>2 <f f,>4 <gf gf,>4 |
}

  <af af,>2 <df, df,>2~\fermata |

  <df df,>1~ | <df df,>2 r2 |

  % ----------------------------------
 % Closing Section
  
  <bf bf'>2  <cf cf'> |
  <gf gf'>2 <f f'>2 |
  gf'8-.( f,-.~ f4~ f2) |
  f'8-.( f,~ f4~ f2) |
  <f f'>2 <f f'>2\fermata |
  <gf gf'>1~\sfz | <gf gf'>2 r2 | 

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

  \key c \minor

  <ef' ef, ef,>1 | <ef df, df,>1 | <ef ef, ef,>1 | <ef bf, bf,>1 | 

  \key g \major

  <g, g,>1 | <fs fs,>1 | <g g,> | <bf, bf,>~

  \key gf \major

  <bf bf,>~ | <bf bf,>

  r1 | r1 | r1 |

 % ------------------------------------------------
 % Arpeggio section

\repeat volta 2 {
  \arpeggioOne | \arpeggioOne | 
  \arpeggioTwo | \arpeggioTwo |
}

    <<
    { \tuplet 3/2 {r8 bf df} \tuplet 3/2 {gf ef bf}  }
    \\
    { gf2 }
  >>

  <df ef af df>2~ | <df ef af df>1~ | <df ef af df>2 r2 |

  r1 | r1 | r1 | r1 | r1 |
  <gf df' gf>1~ | <gf df' gf>2 r2 |
  
}


\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    >>
  \layout { }
  \midi { }
}