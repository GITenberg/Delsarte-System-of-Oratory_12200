\include "paper20.ly"
\paper  {
  linewidth = 200.244096\pt
  
  
}

\header {
}

melody = \notes \relative c'' {
  \clef treble
  \key a \major
  \cadenzaOn
  d4 bis8 \bar"|"
  cis4
  \cadenzaOff
}

words = \lyrics {
  Ah! mon fils
}

\score { <<
  \property Staff.TimeSignature \override #'transparent = ##t
  \property Score.automaticMelismata = ##t

  \addlyrics
  \context Staff {
     \melody
  }
  \context Lyrics \words
  >>


  \paper { }
  \midi { \tempo 4 = 120 }
}