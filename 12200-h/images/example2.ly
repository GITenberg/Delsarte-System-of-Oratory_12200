\include "paper20.ly"
\paper  {
  linewidth = 200.244096\pt
  
  
}

\header {
}

melody = \notes \relative c'' {
  \clef treble
  \key ees \major
  \cadenzaOn
  g4 g4. g16 g4 g8 \bar"|"
  aes2 g4
  \cadenzaOff
}

words = \lyrics {
  il re -- nia ta me -- re
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