\version "2.18.2"
\language "english"

\header {
  title = "Semiconductor Physics"
  composer = "Alex Grant"
  opus = "Op. 4"
}



upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket

  \repeat volta 2 {    
    r1 | r1 | r2 r8 b,8(_"rit."\> b'8 f8-.)\! \bar "||"
    c4~c8 b8 d4~d8 c8 | e16-> r8. e8-- c'8 <b  f e d>8 a8\> g8 f16 e16\! |
    d8[( c8] c'4) <d, b>8[( c8]) d'8[( c8]) | f,4(\< d'4) g,4( e'4) |
  }
  \alternative {
    { a,4( f'4)\> g2\! | a8[(_"acc." g8]) g8[( e8]) f8[( c8]) e8[( a,8]) | d8[( f,8]) c'8[( d,8]) b'8[( b,8]) f'4-- |}
    {a4\< f'4 <e a, g>8\f\> d8 c8 b8\!}
  }
  
  <<
    {a'8[( g8]) g8[( e8]) f8[( c8]) e8[( a,8])}\\
    {a4 g4 f4 e4}
  >> |

  <<
    {d'8[( f,8]) c'8[( d,8]) b'8[( b,8]) f'4\fermata} \\
    {d4 c2.}
    >> |

  <d d'>4~<c' d c, d>4 <f, f'>4~<c' f c, f>4 |
  <a a'>4~<c a c, a''>4 <b b'>4~<c b' c,, b'>4 |

  <<
    {f2(\> e4 g4\!)}\\
    {c,1}
  >> |

  <c c'>1\p \bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \set Staff.pedalSustainStyle = #'bracket

  \repeat volta 2 {
    r2\sustainOn <<  {r8 e8~e4}\\{c2} >> |
    <f c>2--\sustainOff\sustainOn << {r8\sustainOff\sustainOn g8~g4}\\{c,2} >> |
    <b g'>1--\sustainOff\sustainOn |
    <c e f>4\sustainOff\sustainOn <c e f>4  <c f g>4\sustainOff\sustainOn  <c f g>4 |
    <c d f g>16\sustainOff r8. <c d f g>4\sustainOn <b c f g>2 
    <a b e f>2\sustainOff\sustainOn <g a e' f>2\sustainOff\sustainOn |
    <f a b>2\sustainOff\sustainOn <f b c>2\sustainOff\sustainOn |
  }
  \alternative {
    { <f g b c>1\sustainOff\sustainOn | r1 | r1 | }
    {<f g b c>2\sustainOff\sustainOn <e f b c>2\sustainOff\sustainOn |}
  }

   r1 | r1 |

  <c' d f>2\sustainOff\sustainOn <c e f g>2\sustainOff\sustainOn |
  <c e g a>2\sustainOff\sustainOn <c e g b>2\sustainOff\sustainOn |
  <c e g c>1->\sustainOff\sustainOn |
  <g c e>1\sustainOff\sustainOn \bar "|."
}



\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    >>
  \layout { }
  \midi { }
}