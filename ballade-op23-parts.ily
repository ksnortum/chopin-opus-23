%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "ballade-op23-other.ily"

#(ly:expect-warning "no viable initial configuration found")

global = {
  \time 4/4
  \key g \minor
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  \staffDown \voiceOne c2~-\slurShapeE ( c8 ef af bf |
  \staffUp c8 af ef' bf'  \oneVoice c af ef' bf' |
  c8 g bf af g4 fs8) r |
  \omit TupletBracket
  r8 fs( g fs  es[ fs \tuplet 3/2 { a! g ef] } |
  ef8.[ d16 \tuplet 3/2 { f!8 ef d] } d4) r |
  r2 c4.->( g8 |
  bf1)-\tieShapeA ^~ |
  \bar "||"
  \time 6/4
  \voiceOne bf2. s8 c,2*1/4( d4.*1/3 fs4 s8 |
  
  \barNumberCheck 9
  g2.) d'( |
  c2.) s8 c,2*1/4( d4.*1/3 fs4 s8 |
  g2.) e( |
  fs2.) s8 c!2*1/4( d4.*1/3 fs4 s8 |
  g2.) g'( |
  f2.) ef,!2.*1/3( a2 |
  cs2.)( d |
  c!2.) s8 c,2*1/4( d4.*1/3 fs4 s8 |
  
  \barNumberCheck 17
  % like 9 (4 bars)
  g2.) d'( |
  c2.) s8 c,2*1/4( d4.*1/3 fs4 s8 |
  g2.) e( |
  fs2.) s8 c!2*1/4( d4.*1/3 fs4 s8 |
  g2.) g' |
  g2.( d |
  c2. g |
  g'2.->)( d |
  
  \barNumberCheck 25
  c2. g |
  f2.) d'~-\slurShapeG ( |
  d4 \slashedGrace { d8 } c4 b  c d ef |
  ef2. d2.*2/3 \hideNoteHead bf4) |
  r4 \slashedGrace { bf8( } a4 gs  a bf c |
  c2. bf |
  a2.) a2~^\riten a8 a |
  a2.~\arpeggio a2 \oneVoice a4->~ |
  
  \barNumberCheck 33
  a16( bf a gs  a g'! e f  f g' f e \magnifyMusic #2/3 { \scaleDurations 6/18 {
    ef!8[ c a bf d c bf g f d ef! e f fs a g f ef] |
  } }
  cs8-.) r d2->~( d4 c g |
  bf2. fs2. |
  g4) <bf bf'>8( d f! ef~ ef4) <a, a'>8( cs ef d~ |
  d4) <bf bf'>8( d f ef~ ef4) <af, af'>8( cs ef d~ |
  d4) <g, g'>8( b d c!~ c4) <c, c'>8( gs' bf a~ |
  a4) <ef ef'>8( b' d c~ c4) \voiceOne g-\slurShapeH ( <fs a> |
  \oneVoice <bf, g' bf>4) \makeHalfNote <bf' bf'>8->(^\agitato d f ef) r4
    \makeHalfNote <a, a'>8->( cs ef d) |
    
  \barNumberCheck 41
  r4 \makeHalfNote <bf bf'>8->( d f ef) r4 \makeHalfNote <af, af'>8->( cs ef
    d) |
  r4 \makeHalfNote <g, g'>8->( b d c!) r4 \makeHalfNote <c, c'>8->( gs' bf a) |
  r4 \makeHalfNote <ef ef'>8->( b' d c) r4 \makeHalfNote <fs,, fs'>8->( cs' ef
    d |
  <bf g'>4) <g c!>8->( bf a g  <bf g'>4) <c g>8->( bf a g |
  f'8^\semprePiuMosso c ef fs, c' ef  fs c' f! ef d c |
  <bf g'>4) <g c>8->( bf a g  <bf g'>4) <g c>8->( bf a g |
  f'8 c ef fs, c' ef  fs c' f! ef d c |
  <bf g'>4) r8 \ottava 1 <g' c>( bf d,  <fs bf> a d, <fs, bf> a d, |
  
  \barNumberCheck 49
  <g c>8 bf d <g c> bf d,  <fs bf> a d, <fs, bf> a d, |
  <g c>8 bf d <g c> bf d,  <fs bf> a d, <fs, bf> a d, |
  \ottava 0 <g, c>8 bf d <g c> bf d,  <fs bf> a d, <fs, bf> a d, |
  <g c>8 bf d <g c> bf d,  <d a'> g bf, <bf ef> d g, |
  <g c!>8 bf d, <d a'> g bf, \clef bass <bf ef> d g, <g c!> bf d,) |
  <g c>8( bf d, <g d'> c ef,  <g c> bf d, <g d'> c ef, |
  <g c>8 bf d, <g d'> c ef,  <g c> bf d, <g d'> c ef,) |
  \clef treble g8-\slurShapeM ( d' bf d g bf  d g bf d \ottava 1 g d' |
  
  \barNumberCheck 57
  bf8 d g, d \ottava 0 bf g  d bf g d bf \voiceOne \staffDown d,) |
  \oneVoice \staffUp g8->-\slurShapeN ( d' bf d g d'  bf d g, d bf \voiceOne
    \staffDown d,) |
  \oneVoice \staffUp fs8->-\slurShapeO ( d' bf d fs d'  bf d fs, d bf \voiceOne
    \staffDown d,) |
  \oneVoice \staffUp g8-\slurShapeP ( d' bf d g bf  d g bf d \ottava 1 g d' |
  bf8 d g, d \ottava 0 bf g  d bf g d bf \voiceOne \staffDown d,) |
  \oneVoice \staffUp gf8->-\slurShapeQ ( d' bf d gf d'  bf d gf, d bf \voiceOne
    \staffDown d,) |
  \oneVoice \staffUp f8->-\slurShapeR ( d' bf d f d'  bf d f, d bf \voiceOne
    \staffDown d,) |
  \oneVoice \staffUp f8( c' a c f a  c f a c \ottava 1 f a |
  
  \barNumberCheck 65
  f'4) \ottava 0 r r r2. |
  R1.-\tweak X-offset 0 ^\riten |
  r2. r4 r <c,,, f>->~^\sotoVoce |
  q2.-\slurShapeS ^( \voiceOne g'2 g4 |
  \oneVoice ef2.~ ef4) ef'4.( d8 |
  <g, c>2. \voiceOne d'2 d4 |
  \oneVoice bf2.) bf'2( bf4 |
  bf2-> af4) af( g fs |
  
  \barNumberCheck 73
  fs2 g) af4.( ef8 |
  g2 f!) g4.( d8 |
  f4 ef d \tuplet 3/2 { c8[ d c] } b c d ef) |
  <c, f>2.-\slurShapeU ^( \voiceOne g'2 g4 |
  \oneVoice ef2.~ ef4) ef'4.( d8 |
  <g, c>2. \voiceOne d'2 d4 |
  \oneVoice bf2.) bf'2->( bf4 |
  bf2. c,2) d4( |
  
  \barNumberCheck 81
  \tuplet 3/2 { ef!8 f ef } d4 ef g) g->~( \tuplet 3/2 { g8 f ef } |
  ef2.) r4 \stemDown g,8[( af] \tuplet 3/2 { bf d c } |
  bf2.)~ bf4 g8[( af] \tuplet 3/2 { bf d c } |
  bf2.)~ bf4 f8[( af] \tuplet 3/2 { bf d c } |
  bf4)~ \voiceOne \tuplet 3/2 4 { bf8 df,( ef  g[ c bf] }  af4~ af8 cf, ef f |
  g2) \oneVoice r4 r \stemDown g8[( af] \tuplet 3/2 { bf d! c } |
  bf4 bf'2.->) \tuplet 3/2 4 { r8 g,[( af]  bf d c } |
  bf4 bf'2.->) \tuplet 3/2 4 { r8 f,[( af]  bf d c } |
  
  \barNumberCheck 89
  bf4)~ \voiceOne \tuplet 3/2 4 { bf8 df,( ef  g[ c bf] }  af4~ af8 cf, ef f |
  \oneVoice g2.)~ g8 g[( bf g' f ef] |
  d2.)~ d8( bf d bf' d, ef |
  e4 f2)~ f8( d f d' c bf |
  gs8)-\slurShapeY ( a f' e d a  \stemDown d,[-\moveTextC _\ms a f] \stemUp
    d-\moveTextB ^\md e \slashedGrace { g! } f |
  << { \voiceOne \staffDown e,2.) \staffUp } \new Voice { s2.^\aTempo } >>
    \oneVoice r8 \voiceOne d'( e gs c b |
  a2.) e'( |
  d2.) \oneVoice r8 \voiceOne d,( e gs c b |
  
  \barNumberCheck 97
  a2.) fs->( |
  gs2.) \oneVoice r8 \voiceOne d( e gs c b |
  a2.) e'( |
  fs2.) \oneVoice r8 \voiceOne c,( e gs b a |
  a2.) fs'( |
  gs2. gs2) r8 gs( |
  gs2. fs2) r8 gs( |
  gs2. fs2) r8 gs( |
  
  \barNumberCheck 105
  a2. gs2 a4) |
  \oneVoice <b, d! e gs b>2.( <d e gs cs>2 q4 |
  <a cs a'>2.) <a' cs a'>2( <gs cs gs'>4 |
  <fs cs' fs>2. <b ds gs>2 <a ds gs>4 |
  <e gs e'>2.) <e e'>2( q4 |
  \undo \omit TupletBracket
  q2-> <d d'>4) \tuplet 3/2 { q8( <e e'> <d d'> } <cs cs'> <d d'> <fs fs'>
    <e e'>) |
  <d d'>2->( <cs cs'>4) \tuplet 3/2 { q8( <d d'> <cs cs'> } <bs bs'> <cs cs'>
    <e! e'!> <d d'>) |
  <cs cs'>4( <b b'>4. <as as'>8) \tuplet 4/3 { <b b'>4( <bs bs'> <cs cs'>
    <gs gs'> } |
  
  \barNumberCheck 113
  \voiceOne b'4 a4. gs8 \grace { fs16 gs } fs4 es8-. fs-. gs-. a-.) |
  \oneVoice <d,, e gs b>2.^( <e gs cs e>2 <d e gs cs e>4 |
  <a cs a'>4) r <a' cs a'>( <a' cs a'>2 <gs cs gs'>4 |
  <fs cs' fs>2. <b ds gs>2 <a ds gs>4 |
  <e gs e'>2) r4 \ottava 1 <e' e'>2~ q8. q16 |
  q4 \ottava 0 r r <fs,, fs'>2.->~ |
  q4 q(\prall^\trillSharp <es es'>8 <fs fs'>  <gs gs'> <as as'> <b b'> <cs cs'>
    <d d'> <e e'> |
  <fs fs'>4) r r <gs, gs'>2-> q4-> |
  
  \barNumberCheck 121
  \voiceFour gs8-\slurShapeA ^( gs' a gs <fss, fss'> <gs gs'>  <as as'>
    <bs bs'> <cs cs'> <ds ds'> <e e'> <fs fs'> |
  <gs gs'>4) \oneVoice r r <gs, gs'>2-> q4-> |
  q4->(\prall^\trillSharp <fss fss'>8 <gs gs'> <as as'> <b b'>  <cs cs'>
    <ds ds'> <es es'> <fss fss'> <gs gs'> <as as'> |
  <b b'>4-.) <gs' b>8-\slurShapeZ ( es ds b  <gs b> es ds b <gs b> es |
  \clef bass ds8 b <gs b> es ds b  <gs' b> es ds b af' f!) |
  bf!8(^\semprePiuAnimato af cf f, bf af  cf f, bf af cf f, |
  bf8 af cf f, bf af  cf f, bf af cf f, |
  bf8 af cf f, bf af  cf f, bf af cf f, |
  
  \barNumberCheck 129
  bf8 af cf f, bf af  cf f, bf af cf f, |
  \clef treble
  bf4) bf8( d cf d  cs f d af' e af |
  f8 cf' g cf af d  bf d cf d cs f |
  d8 af' e af f cf'  g cf af d bf d |
  \ottava 1 cf8 d cs f d af'  e af f cf' g cf |
  bf8 af cf f, bf af  c f, bf af cs f, |
  bf8 af d f, bf af  ef' f, bf af e' f, |
  f'8 d cs e ef c  b d cs bf a c |
  
  \barNumberCheck 137
  b8 af g bf af f  \ottava 0 d bf a! bf af bf |
  fs8 g g' d ef b  c g bf af g f) |
  fs8( g g' d ef b  c g bf af g f) |
  fs8-\slurShapeB ( g g' d ef b  c g bf af g f |
  \voiceFour ef8 af f d af' f  c af' f bf, af' f) |
  \oneVoice fs8( g g' d ef b  c g bf af g f) |
  fs8( g g' d ef b  c g bf af g f) |
  fs8-\slurShapeAB ( g g' d ef b  c g bf af g f |
  
  \barNumberCheck 145
  ff8 ef d df c cf  bf a c bf a af) |
  g8(^\animato af a bf c bf  af bf b c df c |
  a8 bf b c d c  bf c cs d ef d |
  b8 c cs d ef d  c cs d ef e f |
  g8 f e ef d df  c! b bf a! bf af |
  g4) \voiceOne bf,8( bf' d, cf'  bf, bf' ef, g e df' |
  c,8 c'! f, a! e df'  c, c' f, a fs ef'! |
  d,!8 d'! g, b fs ef'  d, d' g, b gs f'! |
  
  \barNumberCheck 153
  \voiceFour e,8 e' a, cs as g'!  fs, fs' b, ds bs a'!^~ |
  \oneVoice <cs, fs a cs>4) bs8-\slurShapeAD ( cs ds es  fs gs a b cs ds |
  es8 fs gs a fs cs  a fs cs a fs cs) |
  a8( fs' ef! a a fs'  ef! a a fs' ef! a |
  fs a ef a, fs a  ef a, fs a ef a,) |
  <bf ef g bf>4 a8(^\leggieramente bf c d  ef e g f! g f |
  c'8 bf a! bf c d  ef! e g f g f |
  c'8 bf a! bf c d  ef! e g f g f |
  
  \barNumberCheck 161
  bf4-.) a,!8( bf c d  ef! e g f g f |
  bf4-.) r r \moveOttavaA \ottava 1 \slashedGrace { f8 } f'( e ef d c bf |
  a g f e ef d  \ottava 0 c bf a g f e |
  ef! df cf bf af gf  f ef df cf bf af |
  \staffDown \voiceOne gf f ef df cf bf  af gf f ef df cf) |
  \staffUp \oneVoice r2. <bf'' d! g!>2->( <af d g>4 |
  <g ef'>4) r <ef' g ef'>2.->( <ef bf' d>4 |
  <ef bf' c>2. <f a! d>2 <ef a d>4 |
  
  \barNumberCheck 169
  <d bf'>4) r r <bf' bf'>2( <b b'>4 |
  % Editorial decision: change b to cf 4th quarter-note
  \tuplet 5/3 { <c c'>4-.\< <bf' df>-. <e, c'>-. <bf' cf>-. <e, c'>-.)\! } 
    \slashedGrace { <af c>8 } <af af'>4-. r r8 <ef c'>( |
  % Same for the bff in the 4th quarter-note
  \tuplet 5/3 { <d bf'>4-.\< <af' c>-. <d, bf'>-. <af' bff>-. <d, bf'>-.)\! }
    \slashedGrace { <g bf>8 } <g g'>4-. r r8 <d bf'>( |
  \tuplet 5/3 { <c af'>4-.\< <ef bf'>-. <c af'>-. <ef g>-. <c af'>)\! }
    \slashedGrace { <f af>8 } <f f'>4-. r <f af>( |
  <f g> <f af>4.-\tweak avoid-slur #'inside \prall <f g>8) <ef g>4-.(\< 
    <ef af>-. <ef a>-.)\! |
  <af, bf f' bf>2.( <af bf d g! bf>2 q4 |
  <g ef'>4) r r <ef' g ef'>2->( <ef bf' d>4 |
  <ef bf' c>2. <f a d>2 <ef a d>4 |
  
  \barNumberCheck 177
  <d bf'>4) r r <bf' bf'>2( r8 q |
  q2) r4 \voiceOne c,2->( d4 |
  ef!4-\tweak avoid-slur #'inside \trill d ef  <d g> 
    << { g4~ \tuplet 3/2 { g8 f ef } } \new Voice { \voiceThree d2 } >> |
  \omit TupletBracket
  \oneVoice <g, ef'>2) r4 r \tuplet 3/2 4 { r8 g[(^\conForza af]  bf d c } |
  bf2)^\ten r4 r \tuplet 3/2 4 { r8 g[( af]  bf d c } |
  bf2.) r4 \tuplet 3/2 4 { r8 f[( af]  bf d c } |
  bf4) \tuplet 3/2 4 { r8 df,[( ef]  g c bf }  af4.) cf,8( ef f |
  g4) r r r \tuplet 3/2 4 { r8^\sempreForte g[( af]  bf d c } |
  
  \barNumberCheck 185
  bf8-.)\noBeam bf'-. bf'4-. r r \tuplet 3/2 4 { r8 g,,[( af]  bf d c } |
  bf8-.)\noBeam bf'-. bf'4-. r r \tuplet 3/2 4 { r8 f,,[( af]  bf d c } |
  bf4) \tuplet 3/2 4 { r8 df,[( ef]  g c bf }  af4.) cf,8( ef f |
  g2.)~ g8 g( bf g' f ef |
  bf2.)~ bf8 g( bf g' f ef |
  d2.)~ d8( bf d bf' a g |
  d2.)~ d8-\slurShapeAF ( bf d bf' a g |
  d8 bf d bf' a g  d bf d bf' a g |
  
  \barNumberCheck 193
  d8 a' c bf g ef  \voiceFour bf[-\moveTextD _\ms g] \oneVoice c,^\md d f ef |
  \staffDown \voiceOne d,2.) \staffUp \oneVoice r8 \voiceOne c'( d fs bf a |
  g2.) d'( |
  c2.) b8\rest c,( d fs bf a |
  g2.) e->( |
  fs2.) b8\rest c,!( d fs bf a |
  g2.) d'( |
  e2.) b8\rest bf,( cs e a g |
  
  \barNumberCheck 201
  g2.) e'2.->( |
  fs2.-> e2) r8 fs( |
  fs2.-> e2) r8 fs( |
  fs2.-> e2) r8 fs( |
  a2. g2 a4) |
  \oneVoice <bf, d bf'>4^\appassionato r8 \ottava 1 <d' bf'>-.( <ef! c'!>-.
    <d bf'>-. <c! a'>-.[ <bf g'>-. <a fs'>-. <bf g'>-. <a f'>-. r16 
    <g ef'>-.] |
  \ottava 0 <g ef'>8-. <fs d'>-. <ef c'>-. <d bf'>-. <c a'>-. <bf g'>-.
    \tuplet 3/2 { <a fs'>-.^\pocoRiten <c ef>-. <c d>-. } \tuplet 5/4 { 
    <b d>16-. <bf d>-. <a d>-. <gs d'>-. <a d>-. } <bf d>-. <a d>-. <c d>-. 
    <bf d>-. |
  \bar "||"
  \time 4/4 <g! d'>8-.) r \ottava 1 <d'' g bf>->( a) r <bf d g>( q-> fs8) |
  
  \barNumberCheck 209
  \ottava 0 r8 <g bf d>( q-> cs,) r <d g bf>( q-> bf) |
  r8 <ef g c!>-\pSlurShapeA \(( q-> d) cs( c <ef g c>-> d) |
  cs( c <ef fs c'>-> d) cs( c <d fs a>-> c)\) |
  <bf d g bf>4 \ottava 1 <d' g bf>8->( a) r <bf d g>( q-> fs8) |
  \ottava 0 r8 <g bf d>( q-> cs,) r <d g bf>( q-> bf) |
  r8 <ef g c!>-\pSlurShapeB \(( q-> d) cs( c <ef g c>-> d) |
  cs( c <ef fs c'>-> d) cs( c <d fs a>-> c)\) |
  <bf d g bf>4 \voiceOne af'-> s g, |
  
  \barNumberCheck 217
  fs4-> s g'-> s |
  af,4-> af' s g,-> |
  fs4-> s g'-> s |
  f,!4 s2. |
  d4 s2. |
  s4 c'-> c-> bf-> |
  bf4-> a g fs |
  \oneVoice <g bf g'>4-. \voiceOne af'-> s g, |
  
  \barNumberCheck 225
  fs4-> s g'-> s |
  af,4-> af' s g,-> |
  fs4-> s g'-> s |
  s1 * 2 |
  c,,4-> c' b c |
  c4 ef d ef |
  ef4 gf f gf |
  
  \barNumberCheck 233
  \ottava 1 fs4 a bf c |
  c4 bf bf a |
  a4 g g d |
}

rightHandLower = \relative {
  s1 * 7 |
  \time 6/4
  \voiceFour s2. r8 c'-> d fs bf a |
  
  \barNumberCheck 9
  r4 <bf, d>-.( q-.) r <d g>-.( q-.) |
  r4 <ef g>-.( q-.) r8 c-> d fs bf a |
  r4 <bf, d>-.( q-.) r <g cs a>-.( q-.) |
  r4 <fs a d>-.( q-.) r8 c'!-> d fs bf a |
  r4 <bf, d>-.( q-.) r <g' bf df>-.( q-.) |
  r4 <bf c>-.( q-.) ef,!8[-> f a ef' d! b16\rest cs] |
  r4 <ef, f a>-.( q-.) r <d f bf>-.( q-.) |
  r4 <ef g>-.( q-.) r8 c-> d fs bf a |
  
  \barNumberCheck 17
  % like 9 (4 bars)
  r4 <bf, d>-.( q-.) r <d g>-.( q-.) |
  r4 <ef g>-.( q-.) r8 c-> d fs bf a |
  r4 <bf, d>-.( q-.) r <g cs a>-.( q-.) |
  r4 <fs a d>-.( q-.) r8 c'!-> d fs bf a |
  r4 <b, d f!>-.( q-.) r <f' g b d>-.( q-.) |
  r4 <g c ef>-.( q-.) r <d g>-.( q-.) |
  r4 <c g'>-.( q-.) r4 <bf! d>-.( q-.) |
  r4 <g' c ef>-.( q-.) r <d g>-.( q-.) |
  
  \barNumberCheck 25
  r4 <c g'>-.( q-.) r <bf cs>-.( q-.) |
  r4 <bf d>-.( q-.) r <d f bf>-.( q-.) |
  <ef! a> q q q q q |
  r4 <ef bf'!> q <d bf'> q q |
  <cs fs>4 q q q q q |
  r4 <c g'!> q <bf g'> q q |
  <ef g>4 q q <d fs> q q |
  <a e'>4\arpeggio s2 s2. |
  
  \barNumberCheck 33
  s1. * 6 |
  s2. s4 ef'8 d cs c |
  s1. |
  
  \barNumberCheck 41
  s1. * 8 |
  
  \barNumberCheck 49
  s1. * 8 |
  
  \barNumberCheck 57
  s1. * 8 |
  
  \barNumberCheck 65
  s1. * 3 |
  s2. d |
  s1. |
  s2. a' |
  s1. * 2 |
  
  \barNumberCheck 73
  s1. * 3 |
  s2. d, |
  s1. |
  s2. a' |
  s1. * 2 |
  
  \barNumberCheck 81
  s1. * 4 |
  \omit TupletBracket
  \omit TupletNumber
  s4 \tuplet 3/2 { s8 df,4-> } s  s4. cf4-> s8 |
  s1. * 3 |
  
  \barNumberCheck 89
  s4 \tuplet 3/2 { s8 df4-> } s  s4. cf4-> s8 |
  s1. * 4 |
  s2. s8 d2*1/4 e4.*1/3 gs4 s8 |
  r4 <c, e>-.( q-.) r a'-.( a-.) |
  r4 <f a>-.( q-.) s8 d2*1/4 e4.*1/3 gs4 s8 |
  
  \barNumberCheck 97
  r4 <c, e>-.( q-.) r <a c e>-.( q-.) |
  r4 <b e>-.( q-.) s8 d2*1/4 e4.*1/3 gs4 s8 |
  r4 <c, e>-.( q-.) r <a' c>-.( q-.) |
  r4 <e a c>-.( q-.) s8 c2*1/4 e4.*1/3 gs4 s8 |
  r4 <c, e>-.( q-.) r <e a c>-.( q-.) |
  r4 <a c ds>-.( q-.) r q-. r |
  r4 <a c ds>-.( q-.) r q-. r |
  r4 <a c ds>-.( q-.) r q-. r |
  
  \barNumberCheck 105
  r4 <c ds fs>-.( q-.) r q q |
  s1. * 4 |
  \voiceThree a'1. |
  gs1. |
  fs2. es |
  
  \barNumberCheck 113
  \voiceTwo << { b4( a2) } \new Voice { \voiceFour <cs fs>2. } >> <a b ds>4
    q8 q q q |
  s1. * 7 |
  
  \barNumberCheck 121
  \voiceOne gs2-> s4 s2. |
  s1. * 3 |
  \clef bass s2. s2 cf,4 |
  s1. * 3 |
  
  \barNumberCheck 129
  s1. * 8 |
  
  \barNumberCheck 137
  s1. * 4 |
  \clef treble ef'4-> s8 d4 s8 c4 s8 bf4 s8 |
  s1. * 3 |
  
  \barNumberCheck 145
  s1. * 5 |
  \voiceFour s2. s4 ef, e |
  s4 f e  s f fs |
  s4 g fs s g gs |
  
  \barNumberCheck 153
  \voiceOne s4 a as s b bs |
  s1. * 7 |
  
  \barNumberCheck 161
  s1. * 8 |
  
  \barNumberCheck 169
  s1. * 8 |
  
  \barNumberCheck 177
  s1. |
  s2. \voiceFour c,4-. r d-. |
  \tupletOn
  ef!4-. d-. ef-. \tuplet 4/3 { g-. af-. bf-. af-. } |
  s1. * 3 |
  \tupletOff
  s4 \tuplet 3/2 { s8 df,4 } s4  s4. cf4 s8 |
  s1. |
  
  \barNumberCheck 185
  s1. * 2 |
  s4 \tuplet 3/2 { s8 df4 } s4  s4. cf4 s8 |
  s1. * 5 |
  
  \barNumberCheck 193
  s1. |
  s2. s8 c2*1/4 d4.*1/3 fs4 s8 |
  r4 <bf, d>-.( q-.) r g'-.( g-.) |
  r4 <ef g>-.( q-.) s8 c2*1/4 d4.*1/3 fs4 s8 |
  r4 <bf, d>-.( q-.) r <g bf cs>-.( q-.) |
  r4 <fs a d>-.( q-.) s8 c'!2*1/4 d4.*1/3 fs4 s8 |
  r4 <bf, d>-.( q-.) r <g' bf>-.( q-.) |
  r4 q-.( q-.) s8 bf,2*1/4 cs4.*1/3 e4 s8 |
  
  \barNumberCheck 201
  r4 <bf cs e>-.( q-.) r <g' bf cs>-.( q-.) |
  r4 q-.( q-.) r q-. r |
  r4 q-.( q-.) r q-. r |
  r4 q-.( q-.) r q-. r |
  r4 <bf cs e>-.( q-.) r q-. r |
  s1. * 2 |
  \time 4/4
  s1 |
  
  \barNumberCheck 209
  s1 * 7 |
  \slurUp
  s4 af'8( <ef' af>  af, <ef af>^> g, <ef' g> |
  
  \barNumberCheck 217
  fs,8 <a! fs'> fs' <a! fs'>  g <bf g'> g <bf, g'>) |
  af8-\slurShapeC ( <ef' af> af <ef' af>  af, <ef af> g, <ef' g> |
  fs,8 <a! fs'> fs' <a! fs'>  g <bf g'> g <bf, g'>) |
  f!8-\slurShapeAG ( <af f'!> f' <af f'!>  f <af, ef'> ef <af ef'>) |
  d,8-\slurShapeAG ( <af' d> d <af' d>  d, <af c> c, <af' c>) |
  c,8-\slurShapeAH ( <ef c'> c' <ef c'>  c <ef c'> bf <d bf'> |
  bf8 <d bf'> a! <c a'!>  g <bf g'> fs <a fs'>) |
  s4 af'8( <ef' af>  af, <ef af>^> g, <ef' g> |
  
  \barNumberCheck 225
  fs,8 <a! fs'> fs' <a! fs'>  g <bf g'> g <bf, g'>) |
  af8-\slurShapeD ( <ef' af> af <ef' af>  af, <ef af> g, <ef' g> |
  fs,8 <a! fs'> fs' <a! fs'>  g <bf g'> g <bf, g'>) |
  f!8( <af f'!> f' <af f'!>  f <g, ef'> ef <g ef'>) |
  d8( <fs d'> d' <fs d'>  d <e, cs'> cs <e cs'>) |
  c!8-\slurShapeAI ( <ef! c'!> c' <ef c'>  b <ef b'> c <ef c'> |
  c8 <ef c'> ef <gf ef'>  d <gf d'> ef <gf ef'> |
  ef8 <gf ef'> gf <bf gf'>  f <af f'> gf <bff gf'> |
  
  \barNumberCheck 233
  \ottava 1 fs8 <a! fs'> a <c a'>  bf! <d bf'> c <ef c'> |
  c8 <ef c'> bf <d bf'>  bf <d bf'> a <c a'> | 
  a8 <c a'> g <bf g'>  g <bf g'> d, <fs d'>) |
  \ottava 0 \oneVoice r8 \ottava 1 bf( <d bf'>-> bf  <df bf'>-> bf <c a'>-> a |
  <c a'>8-> a <bf g'>-> g  \stemDown <bf g'> g <fs d'>-> d) |
  \stemNeutral r8 d'( <g bf d>-> d) \ottava 0 r4 <g, bf d>8->( d) |
  r4 <g, bf d>8->( d)  \clef bass r4 <g, bf d>8->( d) |
  r4 <g bf e>8->( d)  r4 <g bf e>8->( d) |
  
  \barNumberCheck 241
  r4 <g bf e>8->( d)  r4 <g bf e>8->( d) |
  \undo \omit TupletNumber
  r2 \tuplet 3/2 4 { g8( gs a  bf b c } |
  \scaleDurations 2/3 {
    \clef treble cs8[ d ef e f fs]  g[ gs a bf b c!] |
    cs8[ d ef! e f! fs]  g[ gs a bf b c!] |
    \moveOttavaB \ottava 1 cs8[ d ef! e f! fs]  g[ gs a bf b c!]) | |
  }
  \strictSpacingOn
  \scaleDurations 16/29 {
    ef8[( d f ef d c! b d c bf a g fs a \barLinesOff g 
    \once \omit Accidental fs ef d ef d f ef d c \ottava 0 b d c bf a]
  } |
  \strictSpacingOff
  \barLinesOn
  \scaleDurations 16/39 {
    g16[ fs a g fs ef d ef d f ef d c b d c bf a g fs ef d \staffDown \voiceOne
    c bf a g fs ef d c bf a g fs ef d c bf a)]
  } |
  
  \barNumberCheck 249
  \staffUp \oneVoice R1 |
  \scaleDurations 16/21 {
    \staffDown \voiceOne r16 \rotateHairpinC a'-\slurShapeAL (^\< bf c d e fs
    g a bf c \staffUp d e fs g a bf c d e fs\!
  } |
  \oneVoice g8-.) r r4 \staffDown \voiceOne <d,, g bf>4.-.( q8-. |
  q2-.) \tuplet 6/4 { r8 d[-\slurShapeAJ (^\f g a c bf]) } |
  bf8-. s s4 bf,2->~-\slurShapeAM ( |
  \scaleDurations 16/28 {
    bf16[ c d e fs g a  bf \staffUp \voiceFour c d e fs g a bf c d e fs g
    \ottava 1 a bf c d e fs g a]
  } |
  bf8-.) \ottava 0 \oneVoice r r4 
    << 
      { \staffDown \voiceOne \clef bass <d,,,, g bf d>4.-.( q8-. } 
      \new Voice { s2^\riten } 
    >> |
  q2-.) \staffUp \oneVoice \tuplet 6/4 { r8 \stemDown d'[(^\accel g bf ef! 
    d]) } |
  
  \barNumberCheck 257
  d8-. r r4 \ottava 1 \tuplet 3/2 { \acciaccatura { e''8 } <e, e'>4
    \acciaccatura { ef'8 } <ef, ef'>4 \acciaccatura { d'8 } <d, d'>4 } |
  \tuplet 3/2 2 {
    \acciaccatura { cs'8 } <cs, cs'>4 \acciaccatura { c'!8 } <c, c'>4
    \acciaccatura { b'8 } <b, b'>4 \acciaccatura { bf'8 } <bf, bf'>4
    \acciaccatura { a'8 } <a, a'>4 \acciaccatura { af'8 } <af, af'>4
  } |
  \ottava 0 \scaleDurations 2/3 {
    <g g'>4 <fs fs'> <f f'> <e e'> <ef ef'> <d d'> |
    <cs cs'>4 <c c'> <b b'> <bf bf'> <a a'> <af af'> |
  }
  <g g'>2-. r |
  \ottava 1 <bf' d g bf>1
  \ottava 0 g,,1\fermata |
  \bar "|."
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 7 |
  \time 6/4 |
  s1. |
  
  \barNumberCheck 9
  s1. * 8 |
  
  \barNumberCheck 17
  s1. * 5 |
  \voiceThree s4 c2 s4 d2 |
  s4 ef2 s4 d2 |
  s1. |
  
  \barNumberCheck 25
  s1. * 8 |
  
  \barNumberCheck 33
  s1. * 2 |
  s4 \hideNoteHead ef'( <bf d>2 <bf cs>4 <a c>) |
  s4 f'!( ef) s ef( d) |
  s4 f!( ef) s ef( d) |
  s4 d( c) s bf!( a!) |
  s4 g( fs) s2. |
  s4 f'!( <bf, ef>) s ef( <a, d>) |
  
  \barNumberCheck 41
  s4 f'!( <bf, ef>) s ef( <af, b d>) |
  s4 d( <g, c>) s bf!( <ef, a!>) |
  s1. |
  s2. s4 ef8( d) r4 |
  r4 a'2->~-\slurShapeI ( \hideNoteHead a4 s2 |
  \hideNoteHead d4) s2 s4 ef8( d) r4 |
  \clef treble r4 a'2->~ \hideNoteHead a4 s2 |
  s1. |
  
  \barNumberCheck 49
  s4 d, \stemDown d' s2. |
  s1. |
  \stemUp s4 d,,2 s2. |
  s1. * 5 |
  
  \barNumberCheck 57
  s1. * 5 |
  s2. s2 \hideNoteHead d,4_( |
  f2.)~ f2_( g!4 |
  a2) s4 s2. |
  
  \barNumberCheck 65
  s1. * 8 |
  
  \barNumberCheck 73
  s1. * 7 |
  s2. g' |
  
  \barNumberCheck 81
  f2. s |
  s1. * 7 |
  
  \barNumberCheck 89
  s1. * 6 |
  s2. e'( |
  d2.) s2. |
  
  \barNumberCheck 97
  s2. fs,->( |
  gs2.) s2. |
  s2. e'( |
  fs2.) s |
  s2. fs( |
  gs2. fs2) r8 gs( |
  gs2. fs2) r8 gs( |
  gs2. fs2) r8 gs( |
  
  \barNumberCheck 105
  a2. gs2 a4)\arpeggio |
  s1. * 4 |
  s2. s4 d,2 |
  s2. s4 cs2 |
  s1. |
  
  \barNumberCheck 113
  s4 cs <a fs'> s b <a ds> |
  s1. * 7 |
  
  \barNumberCheck 121
  s1. * 8 |
  
  \barNumberCheck 129
  s1. * 8 |
  
  \barNumberCheck 137
  s1. |
  s4 \clef treble c'4( bf) s <d, af'>2 |
  s4 c'4( bf) s <d, af'>2 |
  s4 af'( g) s g( f) |
  \clef bass s4 ef( d) s c( bf) |
  s4 \clef treble c'4( bf) s <d, af'>2 |
  s4 c'4( bf) s <d, af'>2 |
  s4 f'!( ef) s g,( f) |
  
  \barNumberCheck 145
  s1. * 8 |
  
  \barNumberCheck 153
  s1. * 8 |
  
  \barNumberCheck 161
  s1. * 8 |
  
  \barNumberCheck 169
  s1. * 8 |
  
  \barNumberCheck 177
  s1. * 8 |
  
  \barNumberCheck 185
  s1. * 8 |
  
  \barNumberCheck 193
  s1. * 2 |
  \clef bass s2. d( |
  c2.) s |
  s1. * 2 |
  s2. d( |
  e2.)  s |
  
  \barNumberCheck 201
  s2. e->( |
  fs2.-> e2) r8 fs( |
  fs2.-> e2) r8 fs( |
  fs2.-> e2) r8 fs( |
  a2.-> g2 a4) |
  s1. * 2 |
  \time 4/4
  s1 |
  
  \barNumberCheck 209
  s1 * 7 |
  \mergeDifferentlyDottedOn
  s4 c,,2-> <af' ef'>4 |
  
  \barNumberCheck 217
  s1 |
  r4 q2 q4 |
  s1 |
  s2 r4 <ef af c> |
  r4 <f af b> r af |
  s1 |
  s2 r4 <a c d> |
  s4 c,2-> <af' ef'>4 |
  
  \barNumberCheck 225
  s1 |
  r4 q2. |
}

leftHandLower = \relative {
  \voiceTwo c,2~-\slurShapeF ( c8 ef af bf |
  c af ef' bf'  \clef treble \oneVoice c af ef' bf' |
  c8 g bf af  g4 fs8) r |
  \omit TupletBracket
  r8 fs( g fs  es[ fs \tuplet 3/2 { a! g ef] } |
  ef8.[ d16 \tuplet 3/2 { f!8 ef d] } d4) r |
  \clef bass r2 <ef, g c>( |
  % ef is d in some editions
  <d g ef'>1)\arpeggio |
  \time 6/4 |
  r2. d,4-. r r |
  
  \barNumberCheck 9
  r4 g-.( g-.) r bf'-.( bf-.) |
  r4 <a c>-.( q-.) r d,,-.( d-.) |
  r4 g-.( g-.) r a-.( a-.) |
  r4 d,-.( d-.) r d'-.( d-.) |
  r4 g,-.( g-.) r e''-.( e-.) |
  r4 f-.( f-.) r f,,-.( f-.) |
  r4 bf-.( bf-.) r bf'-.( bf-.) |
  r4 a-.( a-.) r d,,-.( d-.) |
  
  \barNumberCheck 17
  % like 9 (4 bars)
  r4 g-.( g-.) r bf'-.( bf-.) |
  r4 <a c>-.( q-.) r d,,-.( d-.) |
  r4 g-.( g-.) r a-.( a-.) |
  r4 d,-.( d-.) r d'-.( d-.) |
  r4 g-.( g-.) r g,-.( g-.) |
  r4 \voiceTwo c,-. g''-. d\rest d,-. g'-. |
  d4\rest ef,-. g'-. d\rest d,-. g'-. |
  \oneVoice \stemDown b,8->( c d c g'4)  cs,8->( d ef d g4) |
  
  \barNumberCheck 25
  d8->( ef f ef g4) \stemNeutral \grace { ds16^( e } \afterGrace 7/8 
    e2.-\moveTrillA \trill { ds16 e } |
  f2.)~ f4 <e, e'>( <f f'> |
  <fs fs'>2.)~ q4 <es es'>( <fs fs'> |
  <g g'>1.) |
  <d d'>1. |
  <ef ef'>1. |
  <c c'>2.( <d d'>) |
  <cs cs'>4-. <e' a e'>-.( q-. q-. q-. q-.) |
  
  \barNumberCheck 33
  <c,! c'!>4-. <f' a ef'! f>-.( q-. q-. q-. q-.) |
  <bf,, bf'>4 <d' f bf> <f bf d> ef, <ef' g c> <g c ef> |
  d,4 \voiceTwo <g' bf ef> g d2. |
  \oneVoice g,4-. \voiceTwo <g' bf>2 \oneVoice fs,4-. \voiceTwo <fs' a>2 |
  \oneVoice g,4-. \voiceTwo <g' bf>2 \oneVoice f,!4-. \voiceTwo <f'! af b>2 |
  \oneVoice ef,4-. \voiceTwo <ef' g>2 \oneVoice c,4-. \voiceTwo ef'2 |
  \oneVoice d,4-. \voiceTwo <d' c'>2 \oneVoice d,4-. a''( d,) |
  <g, g'>4-. \voiceTwo g'2 \oneVoice <fs, fs'>4-. \voiceTwo fs'2 |
  
  \barNumberCheck 41
  \oneVoice <g, g'>4-. \voiceTwo g'2 \oneVoice <f,! f'!>4-. \voiceTwo f'2 |
  \oneVoice <ef, ef'>4-. \voiceTwo ef'2 \oneVoice <c, c'>4-. \voiceTwo c'2 |
  \oneVoice d,4-. <a' g'>( <c fs>)  d,-. <a' e'>( <c! d>)~ |
  <g d'>4 <g, g'> r <g' d'> \voiceTwo g2 |
  <g c ef>2.~ <g c ef a>4 \oneVoice <g g'> <ef' ef'> |
  <d d'>4-. <g, g'>2 <g' d'>4 \voiceTwo g2 |
  \clef treble <g c ef>2.~-\slurShapeJ ^( <g c ef a>4 \oneVoice <g g'>
    <ef' ef'> |
  <g d'>4) r r <ef fs a ef'>4->( d' d, |
  
  \barNumberCheck 49
  g,4-.) \voiceTwo d'2-\slurShapeK ^( \oneVoice <ef fs a ef'>4-> d' d, |
  g,4-.) r4 \clef bass d-\slurShapeL ( <ef fs a ef'>-> d' d, |
  g,4-.) \voiceTwo d'^( d'  \oneVoice <ef, fs a ef'>-> d' d,) |
  g,4( <d' bf'>) r <cs, cs'>( <d d'>) r |
  <g, g'>4( d'') r cs,( d) r |
  <g, g'>4 r c!( <g g'>) r c( |
  <g g'>4) r c( <g g'>) r c( |
  <g g'>2.) r4 <d''' g>-.( <g, d'> |
  
  \barNumberCheck 57
  <d' g>2) r4 r r \voiceTwo d,,4( |
  \oneVoice <g, g'>2.)~ q2 \voiceTwo d'4( |
  \oneVoice <fs, fs'>2.)~ q2 \voiceTwo d'4( |
  \oneVoice <g, g'>2.) r4 <d'' g>4-.( <g, d'>-. |
  <d' g>2) r4 r r \voiceTwo d,( |
  \oneVoice <gf, gf'>2.)~ q2 \voiceTwo d'4 |
  f,1.~ |
  f2 \oneVoice r4 r <c''' f>-.( <f, c'>-. |
  
  \barNumberCheck 65
  <c' f>2.~ q2 <f, c'>4 |
  <c' f>2.~ q2 <f, c'>4 |
  <c' f>2 <f, c'>4 <c' f> <f, c'>) r |
  bf,,4-. bf'( af'  f c' bf) |
  ef,,4( bf' ef  g bf ef) |
  c4( ef f, ef' g f) |
  bf,,4-\slurShapeT ( f' bf \clef treble d f bf) |
  \clef bass c,4( ef f,  bf d af') |
  
  \barNumberCheck 73
  bf,4( d ef,  af c g') |
  af,4( c d,  g b f') |
  g,4( c c,  f a! ef') |
  f,4( af bf,  af' c bf) |
  ef,,4( bf' ef  g bf ef) |
  c4( ef f,  ef' g f) |
  bf,,4-\slurShapeV ( f' bf \clef treble d f bf) |
  \clef bass c,,,4-. e''( bf \voiceTwo g e' bf) |
  
  \barNumberCheck 81
  f4^( ef'! a,) \oneVoice bf,( d' af) |
  \stemDown ef,8( bf' g' ef bf' g  ef'4) r r |
  ef,,8( bf' g' ef bf' g  ef'4) r r |
  ef,,8-\slurShapeW ( bf' af' f bf af  d4) r r |
  \oneVoice ef,,8( bf' g'4) r ef,8( cf' af'4) r |
  \stemDown ef,8( bf' g' ef bf'-> g  ef'4) r r |
  ef,,8( bf' g' ef bf' g  ef'4) r r |
  ef,,8-\slurShapeX ( bf' af' f bf af  d4) r r |
  
  \barNumberCheck 89
  \oneVoice ef,,8( bf' g'4) r ef,8( cf' af'4) r |
  \stemDown ef,8( bf' g' ef bf'-> g  ef'4) r r |
  g,,8( d' bf' g d' bf  g'4) r r |
  bf,,8( f' d' bf f' d  bf'4) r r |
  d,,8( a' f' d a' f) s2. |
  \voiceTwo r4 e,,-.( e-.) \oneVoice r e-.( e-.) |
  r4 e-.( e-.) \voiceTwo r <e' a>-.( q-.) |
  r4 <e a>-.( q-.) \oneVoice r e,-.( e-.) |
  
  \barNumberCheck 97
  r4 e-.( e-.) \voiceTwo r e-.( e-.) |
  r4 e-.( e-.) \oneVoice r e-.( e-.) |
  r4 e-.( e-.) \voiceTwo r <e' a c>-.( q-.) |
  r4 q-.( q-.) \oneVoice r e,-.( e-.) |
  r4 e-.( e-.) \voiceTwo r <e' a c>-.( q-.) |
  \after 8 \moveTextA ^\crescMarkup r4 <e a c>-.( q-.) r q-. r |
  r4 <e a c>-.( q-.) r q-. r |
  r4 <e a c>-.( q-.) r q-. r |
  
  \barNumberCheck 105
  r4 <e a c>-.( q-.) r q q\arpeggio |
  \oneVoice <e,, e'>4 <e'' gs d'!> <gs d' e> <b d gs> <gs d' e> <e gs d'> |
  <a,, a'>4 <e'' cs'> <a e'> <cs a'> <a e'> <e cs'> |
  <b, b'>4 <fs'' b> <a ds> <b fs'> <a ds> <fs b> |
  <e, e'>4 <e' b'> <gs e'> <b gs'> <gs e'> <e b'> |
  <fs, fs'>4 <fs' d'!> <a a'> <b,, b'> \voiceTwo <fs'' d'> <b a'> |
  \oneVoice <e,, e'>4 <e' cs'> <gs gs'> <a,, a'>4 \voiceTwo <e'' cs'> <a gs'> |
  \oneVoice <d,, d'>4 <d' b'> <fs fs'> <cs, cs'> <gs'' cs> <b es> |
  
  \barNumberCheck 113
  <fs,, fs'> \voiceTwo fs''2 \oneVoice <b,, b'>4 \voiceTwo fs''2 |
  \oneVoice <e,, e'>4 <b'' gs'> <e b'> <gs d'!> <e b'> <b gs'> |
  <a, a'>4 <e'' cs'> <a e'> <cs a'> <a e'> <e cs'> |
  <b, b'>4 <fs'' b> <a ds> <b fs'> <a ds> <fs b> |
  <e, e'>4 <e' b'> <gs e'> <b gs'> <gs e'> <e b'> |
  <e, e'>4 <e' as> <fs cs'> <as e'> <fs cs'> <e as> |
  <e,, e'>4 <e'' as> <fs cs'> <as e'> <fs cs'> <e as> |
  <e, e'>4 <e' bs'> <gs ds'> <bs fs'> <gs ds'> <e bs'> |
  
  \barNumberCheck 121
  <e,, e'>4 <e'' bs'> <gs ds'> <bs fs'> <gs ds'> <e bs'> |
  <e, e'>4 <e' cs'> <gs e'> <ds, ds'> <ds' b'> <gs ds'> |
  <cs,, cs'>4 <cs' gs'> <e cs'> <gs,, gs'> <b' gs'> <ds b'> |
  <es,, es'>4 r r <es'' b' ds gs>2\arpeggio r4 |
  R1. |
  bf,!4( d'!) r bf,-\slurShapeAA ( d') r |
  bf,4-\slurShapeAA ( d') r bf,-\slurShapeAA ( d') r |
  d4->( f') r d,->( f') r |
  
  \barNumberCheck 129
  d,4->( f') r d,->( f') r |
  bf,,,4 r r <bf' f' af> r r |
  <f' af d>4 r r <af d f> r r |
  \clef treble <bf f' af>4 r r <f' af d> r r |
  <af d f>4 r r <bf f' af> r r |
  <f' af d>1.~( |
  q2. <ef af c>) |
  <ef\=1_( af~ c\=2(>2. <d\=1) af' bf!\=2)>4 r r |
  
  \barNumberCheck 137
  R1. |
  \clef bass ef,,4-. \clef treble \voiceTwo <ef' g>2 \clef bass \oneVoice 
    bf,4-. \clef treble \voiceTwo a'!( bf) |
  \clef bass \oneVoice ef,4-. \clef treble \voiceTwo <ef' g>2 \clef bass
    \oneVoice bf,4-. \clef treble \voiceTwo a'!( bf) |
  \clef bass \oneVoice ef,4-. \clef treble \voiceTwo <bf' ef>2 \clef bass
    \oneVoice af,4-. \clef treble \voiceTwo <af' c>2 |
  \clef bass bf,4-. <f' af>2 bf,4-. <f' af>2 |
  \clef bass \oneVoice ef4-. \clef treble \voiceTwo <ef' g>2 \clef bass
    \oneVoice bf,4-. \clef treble \voiceTwo a'!( bf) |
  \clef bass \oneVoice ef,4-. \clef treble \voiceTwo <ef' g>2 \clef bass
    \oneVoice bf,4-. \clef treble \voiceTwo a'!( bf) |
  \clef bass \oneVoice ef,4-. \clef treble \voiceTwo <g' bf>2 \clef bass
    \oneVoice af,,4-. \clef treble \voiceTwo <af' c>2 |
    
  \barNumberCheck 145
  \clef bass \oneVoice bf,4 r <f' af d> q q q |
  <ef bf' df>4-> r8 <ef, ef'> q4 <af' c>-> <g, g'> <gf gf'> |
  <a'! ef'>4-> r8 <f, f'> q4 <bf' d!>-> <a, a'> <af af'> |
  <b' f'>4-> r8 <g, g'> q4 <c' ef>-> <c,, c'>-> r |
  <af'' ef'>-\slurShapeAC ( cf,->) r <af' d>-\slurShapeAC ( bf,->) r | 
  <ef, ef'>4 <g g'> <af af'>  <g g'> <ef ef'> <bf' bf'> |
  <a! a'!>4 <f f'> <bf bf'> <a a'> <f f'> <c' c'> |
  <b b'>4 <g g'> <c c'>  <b b'> <g g'> <d' d'> |
  
  \barNumberCheck 153
  <cs cs'>4 <a a'> <e' e'>  <ds ds'> <b b'> <d d'> |
  <cs, cs'>4 \clef treble r8 <a'' cs fs a>8-.( q4-. q-. q-. q-.) |
  q2.-> r4 r \clef bass <cs,, cs'> |
  <c! c'!>4 r8 <fs' a ef'> q4( q->) r <c, c'> |
  <cf cf'>4 r8 <gf'' a ef'>( q4 q->) r <cf,, cf'>( |
  <bf bf'>4) r r r <a'' c ef!>( <af bf d> |
  <g bf ef>4) r r r \clef treble <a' c ef!>( <af bf d> |
  <g bf ef>4) r r r <a' c ef!>( <af bf d> |
  
  \barNumberCheck 161
  <g bf ef>4) r r r <a! c ef!>( <af bf d> |
  <g bf ef>4) r r <c,, ef f a!> r r |
  R1. |
  \clef bass <cf, ef af ef'>4\arpeggio r r r2. |
  \voiceTwo cf,4-> r r r2. |
  \oneVoice bf8(-\moveTextE _\sfMarkup f' bf d! bf f  bf, f' bf f' bf,
    f) |
  ef8( bf' ef g ef bf)  ef,( c' ef bf' ef, c) |
  f,8( c' ef bf' ef, c)  \stemDown f,( c' ef a! ef c) |
  
  \barNumberCheck 169
  bf8( f' bf d bf f)  bf,( f' bf f' bf, f) |
  bf,8( g' c e c g)  bf,( af' c f c af) |
  bf,8( f' af d af f)  bf,( ef g ef' g, ef) |
  bf8( ef af c af ef)  bf( f' af d af f) |
  b,8( f' g d' g, f)  c( ef g ef' gf, ef) |
  d8( af' bf f' bf, af)  bf,( f' bf d bf f) |
  \rotateHairpinA ef,8(\< bf' ef g bf ef\!  g\> ef bf g ef bf)\! |
  f8( c' ef bf' ef, c)  f,( c' ef a ef c) |
  
  \barNumberCheck 177
  \rotateHairpinB bf,8(\< bf' f' bf d f\! \clef treble d'\> bf f d 
    \clef bass bf f)\! |
  bf,8( e g c g e)  bf( e g c g e) |
  bf8( f' a! c a f)  bf,( f' af d af f) |
  ef,8-\slurShapeAE ( bf' ef g ef bf  ef, bf' ef bf' ef, bf |
  ef,8 bf' ef g ef bf  ef, bf' ef bf' ef, bf |
  ef,8 bf' d af' d, bf  ef, bf' d bf' d, bf) |
  ef,8( bf' ef g ef bf)  ef,( cf' ef af ef cf) |
  ef,8( bf' ef g ef bf  ef, bf' ef bf' ef, bf |
  
  \barNumberCheck 185
  ef,8 bf' ef g ef bf  ef, bf' ef bf' ef, bf |
  ef,8 bf' d af' d, bf  ef, bf' d bf' d, bf) |
  ef,8( bf' ef g ef bf)  ef,( cf' ef af ef cf) |
  ef,8( bf' ef g ef bf  ef, bf' ef bf' ef, bf |
  ef,8 bf' ef g ef bf  ef, bf' ef bf' ef, bf) |
  g8( d' g bf d bf  g' d bf g d g,) |
  g,8( g' d' g bf d  \clef treble bf' g d \clef bass bf g d) |
  g,8( d' d'4) r r2. |
  
  \barNumberCheck 193
  R1. |
  \voiceTwo r4 d,,-.( d-.) \oneVoice r d-.( d-.) |
  r4 d-.( d-.) \voiceTwo r <d' g>-.( q-.) |
  r4 q-.( q-.) \oneVoice r d,-.( d-.) |
  r4 d-.( d-.) r d-.( d-.) |
  r4 d-.( d-.) r d-.( d-.) |
  r4 d-.( d-.) \voiceTwo  r <d' g bf>-.( q-.) |
  r4 q-.( q-.) \oneVoice r d,-.( d-.) |
  
  \barNumberCheck 201
  r4 d-.( d-.) \voiceTwo  r <d' g bf>-.( q-.) |
  r4 q-.( q-.) r q-. r |
  r4 q-.( q-.) r q-. r |
  r4 q-.( q-.) r q-. r |
  r4 <bf' cs e>-.( q-.) r q-. r |
  \oneVoice <d,,, d'>4-. <d'' bf'>( <g d'> <bf g'> <g d'> <d bf'>) |
  <d,, d'>-. <d'' fs c'>( <fs c' d> <c' fs> <fs, c' d> <d fs c'>) |
  \time 4/4
  <g,, g'>4 r <bf'' d g> bf,-. |
  
  \barNumberCheck 209
  <bf' d g>4 d,-. <bf' d g> g-. |
  <a c! ef g>4 a,-. <c'! ef g> a-. |
  <c! d fs>4 d,-. <c'! d fs> a-. |
  <g d' g>4 g,-. <bf' d g> bf,-. |
  <bf' d g>4 d,-. <bf' d g> g-. |
  <a c! ef g>4 a,-. <c'! ef g> a-. |
  <c! d fs>4 d,-. <c'! d fs> a-. |
  \mergeDifferentlyDottedOn
  <g d' g>4 \voiceTwo c,2.( |
  
  \barNumberCheck 217
  \oneVoice d4-.) <a'! c d> g,-. <g' bf d> |
  \voiceTwo c,1( |
  \oneVoice d4-.) <a'! c d> g,-. <g' bf d> |
  b,4 <f' af d> \voiceTwo c2 |
  d2 ef |
  \oneVoice fs,4 <fs' c' ef> <g bf! d> g,|
  c4 <a'! ef' g> \voiceTwo d,2 |
  \oneVoice <g bf d>4-. \voiceTwo c,2.( |
  
  \barNumberCheck 225
  \oneVoice d4-.) <a'! c d> g,-. <g' bf d> |
  \voiceTwo c,2( d4 ef |
  \oneVoice d4-.) <a'! c d> g,-. <g' bf d> |
  <b,, b'>4 <f'' af d> <c, c'> <ef' g c> |
  <d, d'>4 <fs' a!> <e, e'> g' |
  <fs, fs'>4-. <fs' c' ef!> q <g, g'>-. |
  <af af'>4-. <af' ef' gf> <a ef' gf> <a, a'>-. |
  <bf bf'>4-. <bf' ef gf> <cf ef a!> <b, b'>-. |
  
  \barNumberCheck 233
  <c c'>4-. \clef treble <c' d fs a>2-> q4 |
  \clef bass <bf, bf'>4-.-> \clef treble <g' d' g> \clef bass <c, c'>-.->
    \clef treble <a' ef' g> |
  \clef bass <d, d'>4-.-> \clef treble <d' g bf> \clef bass <c, c'>-.->
    \clef treble <c' d fs a> |
  \clef bass <bf, bf'>-.-> \clef treble <g' d' g> \clef bass <c, c'>-.->
    \clef treble <a' ef' g> |
  \clef bass <d, d'>-.-> \clef treble <d' g bf> \clef bass <c, c'>-.->
    \clef treble <c' d fs a> |
  \clef bass <bf, bf'>-.-> r \clef treble <g''' bf d>8->( d) r4 |
  <g, bf d>8->( d) r4  \clef bass <g, bf d>8->( d) r4 |
  <fs,, fs'>8->( <g g'>) r4 <cs cs'>8->( <d d'>) r4 |
  
  \barNumberCheck 241
  <fs, fs'>8->( <g g'>) r4 <cs cs'>8->( <d d'>) r4 |
  <d, d'>2^\sf r |
  r2 <g'' bf! cs e>4.-> q8 |
  <g bf! cs fs>2-> <g bf cs e>4.-> q8 |
  <g bf cs fs>2-> <g bf cs e>->
  <d a' c! g'>1->~\arpeggio _\sff |
  q1~ |
  <d a' c fs>1-> |
  
  \barNumberCheck 249
  \voiceTwo g,,1->~( |
  \scaleDurations 16/21 {
    g16 a bf c d e fs g a bf c d e fs g a bf c d e fs
  } |
  \oneVoice g8-.) r r4 \voiceTwo <g,,, g'>4.-.( q8-. |
  q2-.) \tuplet 6/4 { r8 d'[-\slurShapeAK ( g a c bf]) } |
  bf8-. \oneVoice r r4 \voiceTwo g,2->~( |
  \scaleDurations 16/28 {
    g16[ a bf c d e fs g a bf c d e! fs! g a bf c d \clef treble e fs g a bf c
    d e fs]
  } |
  g8-.) \oneVoice r r4 \clef bass \voiceTwo <g,,,, g'>4.-.( q8-. |
  q2-.) \oneVoice \tuplet 6/4 { r8 d''[( g bf ef! d]) } |
  
  \barNumberCheck 257
  d8-. r r4 \tuplet 3/2 { \acciaccatura { bf,,8 } <bf bf'>4 
    \acciaccatura { b8 } <b b'>4 \acciaccatura { c8 } <c c'>4 } |
  \tuplet 3/2 2 { 
    \acciaccatura { cs8 } <cs cs'>4 \acciaccatura { d8 } <d d'>4 
    \acciaccatura { ds8 } <ds ds'>4 \acciaccatura { e8 } <e e'>4
    \acciaccatura { f8 } <f f'>4 \acciaccatura { fs8 } <fs fs'>4
  } |
  \scaleDurations 2/3 {
    <g g'>4 <fs fs'> <f f'> <e e'> <ef ef'> <d d'> |
    <cs cs'>4 <c c'> <b b'> <bf bf'> <a a'> <af af'> |
  }
  <g g'>2-. r |
  <g'' d' g>1 |
  <g,, g'>1_\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override TextSpanner.Y-offset = 0
  \override Hairpin.to-barline = ##f
  \override Hairpin.after-line-breaking = ##f
  \tag layout { s1^\fPesante } \tag midi { s1\f } |
  s1 |
  s2.\> s4\! |
  s8 s4.\p s2 |
  s1 |
  s2 s\< |
  s1\! |
  \time 6/4 
  s1. |
  
  \barNumberCheck 9
  s1. * 8 |
  
  \barNumberCheck 17
  s1. * 4 |
  s2 s4\< s2 s4\! |
  s4 s2\> s s4\! |
  s1. |
  s2\> s4\! s2. |
  
  \barNumberCheck 25
  s1. * 2 |
  s2. s2\< s4\! |
  s2.\> s2 s4\! |
  s2 s4\< s2 s4\! |
  s4 s2\> s4 s2\! |
  s2. s2\< s8 s\! |
  s1. |
  
  \barNumberCheck 33
  s2\< s8. s16\! s2 s8..\> s32\! |
  s1. * 2 |
  s4 s2\p s2. |
  s1. * 2 |
  s2. s4 s4.\> s8\! |
  s4 s2\f s2. |
  
  \barNumberCheck 41
  s1. * 4 |
  s2 s4\< s4. s\! |
  s1. |
  s2 s4\< s4. s\! |
  s4. s\f s2. |
  
  \barNumberCheck 49
  s1. * 4 |
  \override DynamicTextSpanner.style = #'none
  s1.\dim |
  \tag layout { s1.\!^\menoForte } \tag midi { s1.\!\f } |
  s1. |
  s2\< s8 s\! s2. |
  
  \barNumberCheck 57
  s8 s-\tweak Y-offset -2.5 \> s2 s2 s4\! |
  s1. * 2 |
  s1.\parenthesize \p |
  s1. |
  s8 s^\piuPParen s2 s2. |
  s4. s^\calando s2. |
  s1.^\smorz |
  
  \barNumberCheck 65
  s1.-\tweak X-offset 0.25 -\tweak Y-offset 3 \parenthesize \pp |
  s1. * 2 |
  s1.\pp |
  s1. * 4 |
  
  \barNumberCheck 73
  s1. * 6 |
  s2. s2\< s4\! |
  s2.\> s4\! s2 |
  
  \barNumberCheck 81
  s1. |
  \revert DynamicTextSpanner.style
  s2. s4 \tag layout { s2-\tweak Y-offset -3 ^\semprePP } \tag midi { s2\pp } |
  s1. * 6 |
  
  \barNumberCheck 89
  s1. |
  s2. s8 s\sempreDim s2 |
  s1. |
  s2. s8\! \rallentSpanner s\startTextSpan s2 |
  s2 s8 s\stopTextSpan s2. |
  s1.-\tweak Y-offset -2 \pp |
  s1. * 2 |
  
  \barNumberCheck 97
  s1. |
  s2. s8 s\p s2 |
  s2 s8 s\< s2 s4\! |
  s2.\fz s8 s\pp s4 s\< |
  s2 s4\! s2.\f |
  s2-\tweak Y-offset 1.5 \> s4\! s2. |
  s2-\tweak Y-offset 1.5 \> s4\! s2. |
  s2\> s4\! s2. |
  
  \barNumberCheck 105
  s2. s2\< s4\! |
  s1.\ff |
  s1. * 5 |
  s2. \tuplet 4/3 { s2.\< s4\! } |
  
  \barNumberCheck 113
  s2\> s4\! s s4.\< s8\! |
  s1.\ff |
  s1. * 4 |
  s2 s4\< s2 s8 s\! |
  s1. |
  
  \barNumberCheck 121
  s2. s2\< s8 s\! |
  s1. |
  s4 s2\< s2 s8 s\! |
  s2\fff s4\> s2 s8 s\! |
  \once \override DynamicTextSpanner.style = #'none
  s4. s\dim s2. |
  s1.\p |
  s1.\< |
  s2. s2 s8 s\! |
  
  \barNumberCheck 129
  s1. |
  s1.\f |
  s1. * 3 |
  s2 s8 s\< s2. |
  s4. s\! s2. |
  s2.^\piuVivo s\> |
  
  \barNumberCheck 137
  s2. s2 s8 s\! |
  s1.-\tweak Y-offset -2 ^\pScherzando |
  s1. * 6 |
  
  \barNumberCheck 145
  s1. |
  s2.\< s2 s8 s\! |
  s2.\< s2 s8 s\! |
  s2.\< s2 s8 s\! |
  s2.\> s2 s8 s\! |
  s2. s4 s2\cresc |
  s1. * 2 |
  
  \barNumberCheck 153
  s2. s2 s8 s\! |
  s4\ff s2\< s2 s8 s\! |
  s1. |
  s8 s\< s2 s2 s8 s\! |
  s2\> s8 s\! s2. |
  s4\sfp s2\< s2. |
  s1. |
  s2. s2 s8 s\! |
  
  \barNumberCheck 161
  s4 s2\< s2 s8 s\! |
  s2. s2\ff\> s8 s\! |
  s1. |
  s1.\sfz |
  s1. |
  s1.\ff |
  s1. * 2 |
  
  \barNumberCheck 169
  s1. * 5 |
  s1.\ff |
  s1. * 2 |
  
  \barNumberCheck 177
  s1. * 2 |
  s4 s2\< s4.\! s4\> s8\! |
  s1. * 5 |
  
  \barNumberCheck 185
  s1. * 3 |
  s2. s4. s\< |
  s2. s2 s8 s\! |
  s1. |
  s2.^\riten s2\> s8 s\! |
  s4. \tag layout { s^\dimRallent } \tag midi { s\dim } s2. |
  
  \barNumberCheck 193
  s1. |
  \tag layout { s1.^\PpSempreSottoVoce } \tag midi { s1.\pp } |
  s1. * 4 |
  \once \override DynamicTextSpanner.style = #'none
  s2.-\tweak Y-offset -3.5 \cresc s2\f\< s4\! |
  s2. s8 s\p\< s4. s8\! |
  
  \barNumberCheck 201
  s2.s-\tweak Y-offset 1 \f |
  s1. |
  s1.\cresc |
  s1. |
  s2. s2 s8 s\! |
  \tag layout { s1.^\ilPiuFortePossibile } \tag midi { s1.\f } |
  s2. s4. s8\< s8. s16\! |
  \time 4/4
  s8-\tweak X-offset -3 \ff s2..-\tweak X-offset -3 \sf |
  
  \barNumberCheck 209
  s1 * 3 |
  s1\sf |
  s1 * 4 |
  
  \barNumberCheck 217
  s1 * 6 |
  s4. s8\> s4. s8\! |
  s1\ff |
  
  \barNumberCheck 225
  s1 * 5 |
  s2\f s\cresc |
  s1 * 2 |
  
  \barNumberCheck 233
  s2.. s8\! |
  s1\ff |
  s1 * 3 |
  s1\ff |
  s1 * 2 |
  
  \barNumberCheck 241
  s1 |
  s2 s\f |
  s2 s4\< \tuplet 3/2 { s s8\! } |
  s2 s4\cresc \tuplet 3/2 { s s8\! } |
  s1 * 3 |
  s16 s2...^\nonDimin
  
  \barNumberCheck 249
  s1 * 2 |
  s2\sf \tag layout { s^\pRiten } \tag midi { s\p } |
  s2 \tuplet 3/2 { s8 s4^\accel } s |
  s1 * 2 |
  s2\sf s\p |
  s2 s\ff |
  
  \barNumberCheck 257
  s2 \tag layout { s^\fffPocoRiten } \tag midi { s\fff } |
  s2 \accelSpanner s\startTextSpan |
  s1 |
  s2.. s8\stopTextSpan |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Largo" 4 = 50
  s1 * 7 |
  \time 6/4
  \set Score.tempoHideNote = ##f
  \tempo "Moderato" 2. = 60
  s1. |
  
  \barNumberCheck 9
  s1. * 8 |
  
  \barNumberCheck 17
  s1. * 8 |
  
  \barNumberCheck 25
  s1. * 8 |
  
  \barNumberCheck 33
  s1. * 7 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 2. = 66 s2 s2. |
  
  \barNumberCheck 41
  s1. * 4 |
  \tempo 2. = 72
  s1. * 4 |
  
  \barNumberCheck 49
  s1. * 8 |
  
  \barNumberCheck 57
  s1. * 6 |
  \tempo 2. = 66
  s1. |
  \tempo 2. = 63
  s1. |
  
  \barNumberCheck 65
  \tempo 2. = 60
  s1. |
  \tempo 2. = 58
  s1. |
  \tempo 2. = 56
  \set Score.tempoHideNote = ##f
  s2. s2 \tempo "meno mosso" 2. = 54 s4 |
  s1. * 5 |
  
  \barNumberCheck 73
  s1. * 8 |
  
  \barNumberCheck 81
  s1. * 8 |
  
  \barNumberCheck 89
  s1. * 3 |
  \set Score.tempoHideNote = ##t
  \tempo 2. = 50
  s1. |
  \tempo 2. = 46
  s1. |
  \tempo 2. = 60 % a tempo
  s1. * 3 |
  
  \barNumberCheck 97
  s1. * 8  |
  
  \barNumberCheck 105
  s1. * 8 |
  
  \barNumberCheck 113
  s1. * 8 |
  
  \barNumberCheck 121
  s1. * 5 |
  \tempo 2. = 80
  s1. * 3 |
  
  \barNumberCheck 129
  s1. * 7 |
  \tempo 2. = 88
  s1. |
  
  \barNumberCheck 137
  s1. |
  \tempo 2. = 96 % scherzando
  s1. * 7 |
  
  \barNumberCheck 145
  s1. * 8 |
  
  \barNumberCheck 153
  s1. * 8 |
  
  \barNumberCheck 161
  s1. * 5 |
  \tempo "(meno messo)" 2. = 54
  s1. * 3 |
  
  \barNumberCheck 169
  s1. * 8 |
  
  \barNumberCheck 177
  s1. * 8 |
  
  \barNumberCheck 185
  s1. * 6 |
  \tempo 2. = 50
  s1. |
  \tempo 2. = 46
  s1. |
  
  \barNumberCheck 193
  \tempo 2. = 42
  s1. |
  \tempo "meno mosso" 2. = 60
  s1. * 7 |
  
  \barNumberCheck 201
  s1. * 6 |
  s2. \tempo 2. = 40 s2. |
  \time 4/4
  \set Score.tempoHideNote = ##f
  \tempo "Presto con fuoco" 2 = 120
  s1 |
  
  \barNumberCheck 209
  s1 * 8 |
  
  \barNumberCheck 217
  s1 * 8 |
  
  \barNumberCheck 225
  s1 * 8 |
  
  \barNumberCheck 233
  s1 * 8 |
  
  \barNumberCheck 241
  s1 * 7 |
  \set Score.tempoHideNote = ##t
  \tempo 2 = 50
  s1 |
  
  \barNumberCheck 249
  \tempo 2 = 120
  s1 |
  \tempo 2 = 100
  s1 |
  s2 \tempo 2 = 60 s |
  s2 \tempo 2 = 120 s |
  s1 |
  \tempo 2 = 100
  s1 |
  s2 \tempo 2 = 60 s |
  s2 \tempo 2 = 120 s |
  
}

pedal = {
  s1 * 7 |
  \time 6/4 
  s2.\sd s2 s8 s\su | 
  
  \barNumberCheck 9
  s1. * 8 |
  
  \barNumberCheck 17
  s1. * 8 |
  
  \barNumberCheck 25
  s1. * 7 |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  
  \barNumberCheck 33
  s2.-\tweak Y-offset -2 \sd s2 s8.. s32\su |
  s2-\tweak Y-offset -1 \sd s4\su s2\sd s4\su |
  s2.\sd s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -0.5 \sd s4\su s2-\tweak Y-offset -0.5 \sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  
  \barNumberCheck 41
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -0.5 \sd s4\su s2. |
  s1. * 5 |
  
  \barNumberCheck 49
  s2-\tweak Y-offset -2 \sd s4\su s2. |
  s2-\tweak Y-offset -2 \sd s4\su s2. |
  s2\sd s4\su s2. |
  s4.-\tweak Y-offset 2 \sd s-\tweak Y-offset 2 \su s2. |
  s4.\sd s\su s2. |
  s2\sd s4\su s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su s2-\tweak Y-offset -1 \sd s4\su |
  s1.\sd |
  
  \barNumberCheck 57
  s2. s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s1.\sd |
  s2. s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s1.-\tweak Y-offset -3 \sd |
  
  \barNumberCheck 65
  s1. * 2 |
  s2. s2 s4\su |
  s2.\sd s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s\su |
  s2.\sd s2 s4\su |
  s2\sd s4\su s2\sd s4\su |
  
  \barNumberCheck 73
  s2\sd s4\su s2\sd s4\su |
  s2\sd s4\su s2\sd s4\su |
  s2\sd s4\su s2\sd s4\su |
  s4\sd s\su s\sd s2 s4\su |
  s2.\sd s2 s8 s\su |
  s4\sd s\su s\sd s2 s4\su |
  s2.\sd s2 s4\su |
  s2-\tweak Y-offset -2 \sd s4\su s2\sd s4\su |
  
  \barNumberCheck 81
  s4\sd s\su s s2\sd s4\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  s2\sd s4\su s4.\sd s\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  
  \barNumberCheck 89
  s2\sd s4\su s4.\sd s\su |
  s2.-\tweak Y-offset -2 \sd s2 s4\su |
  s2.-\tweak Y-offset -1 \sd s2 s4\su |
  s4.\sd s\su\sd s2 s4\su |
  s2.\sd s2 s4\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2\sd s8 s\su s4 s4.\sd s8\su |
  
  \barNumberCheck 97
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s2 s8 s\su |
  s1.\sd |
  s2 s8 s\su s4 s4.\sd s8\su |
  s2.\sd s2 s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  
  \barNumberCheck 105
  s2\sd s4\su s2\sd s4\su |
  s2.-\tweak Y-offset -3 \sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.-\tweak Y-offset -1.5 \sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2\sd s4\su s2-\tweak Y-offset -1.5 \sd s4\su |
  s2\sd s4\su s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su s2\sd s4\su |
  
  \barNumberCheck 113
  s2-\tweak Y-offset -2 \sd s8 s\su s2\sd s8 s\su |
  s2.-\tweak Y-offset -2 \sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.-\tweak Y-offset -1 \sd s2 s8 s\su |
  s2.\sd s2 s8. s16\su |
  s2.\sd s2 s8 s\su |
  s2-\tweak Y-offset -3 \sd s4\su s2. |
  s2.\sd s2 s8 s\su |
  
  \barNumberCheck 121
  s2.-\tweak Y-offset -2 \sd s8 s\su s2 |
  s2\sd s4\su s2\sd s4\su |
  s2\sd s4\su s2-\tweak Y-offset -1 \sd s4\su |
  s1.-\tweak Y-offset -4 \sd |
  s2. s2 s8 s\su |
  s1. * 3 |
  
  \barNumberCheck 129
  s1. |
  s2\sd s4\su s2. |
  s1. * 6 |
  
  \barNumberCheck 137
  s1. |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  s2\sd s4\su s2\sd s8 s\su |
  
  \barNumberCheck 145
  s2\sd s4\su s2. |
  s1. * 7 |
  
  \barNumberCheck 153
  s1. |
  s1.\sd |
  s2. s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s1. * 3 |
  
  \barNumberCheck 161
  s1. |
  s2. s\sd |
  s2 s8 s\su s2. |
  s2\sd s4\su s2. |
  s1. |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  
  \barNumberCheck 169
  s2.\sd s2 s8 s\su |
  s2\sd s8 s\su s2\sd s8 s\su |
  s2\sd s8 s\su s2\sd s8 s\su |
  s2\sd s8 s\su s2\sd s8 s\su |
  s2.\sd s2\su\sd s4\su |
  s2.\sd s2\su\sd s8 s\su |
  s2.-\tweak Y-offset -1 \sd s2 s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  
  \barNumberCheck 177
  s2.-\tweak Y-offset -3 \sd s2 s8 s-\tweak Y-offset -2 \su |
  s2.\sd s2 s8 s\su |
  s2\sd s8 s\su s2\sd s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s4\su |
  s2.\sd s2 s8 s\su |
  s2\sd s8 s\su s2\sd s8 s\su |
  s2.\sd s2 s8 s\su |
  
  \barNumberCheck 185
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2\sd s8 s\su s2\sd s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.-\tweak Y-offset -2 \sd s2 s8 s\su |
  s2.\sd s-\tweak Y-offset 2 \su |
  
  \barNumberCheck 193
  s1. |
  s2.\sd s2 s8 s\su |
  s2.\sd s2 s8 s\su |
  s2.\sd s4\su s4.\sd s8\su |
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s4\su s4.\sd s8\su |
  
  \barNumberCheck 201
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  s2.\sd s2\su\sd s8 s\su |
  s2\sd s4\su s2\sd s4\su |
  s2.-\tweak Y-offset -3 \sd s2 s8 s\su |
  s2.-\tweak Y-offset -4 \sd s\su |
  \time 4/4
  s2.-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 209
  s2\sd s4.\su\sd s8\su |
  s4.\sd s8\su s2 |
  s1 |
  s2.\sd s4\su |
  s2\sd s4.\su\sd s8\su |
  s4.\sd s8\su s2 |
  s1 |
  s4 s2\sd s8 s\su |
  
  \barNumberCheck 217
  s4\sd s\su s4.\sd s8\su |
  s2..\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s4\sd s2.\su |
  s4.\sd s8\su s2 |
  s4.\sd s8\su s2 |
  s4 s2\sd s8 s\su |
  
  \barNumberCheck 225
  s4\sd s\su s4.\sd s8\su |
  s2\sd s\su |
  s4\sd s\su s4.\sd s8\su |
  s4-\tweak Y-offset -1 \sd s\su s4.\sd s8\su |
  s4\sd s\su s4.\sd s8\su |
  s1 * 3 |
  
  \barNumberCheck 233
  s2..\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  s1\sd |
  s2.. s8\su |
  s1 |
  
  \barNumberCheck 241
  s1 * 5 |
  s1\sd |
  s2.... s32\su |
  s32\sd s2....\su |
  
  \barNumberCheck 249
  s1 * 2 |
  s2 s\sd |
  s2\su s |
  s1 * 2 |
  s2 s\sd |
  s2\su s |
  
  \barNumberCheck 257
  s1 * 4 |
  s1\sd |
  s1 |
  s2. s4\su |
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\noBreak \time 6/4 \repeat unfold 3 { s1.\noBreak } 
    s1.\break\noPageBreak
  \repeat unfold 4 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 4 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 4 { s1.\noBreak } s1.\pageBreak
  
  % page 2
  \repeat unfold 4 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\pageBreak
  
  % page 3
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 4 { s1.\noBreak } s1.\pageBreak
  
  % page 4
  \repeat unfold 4 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 4 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
  
  % page 5
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\pageBreak
  
  % page 6
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
  
  % page 7
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
  
  % page 8
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\pageBreak
  
  % page 9
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
  
  % page 10
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\pageBreak
  
  % page 11
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  s1.\noBreak \time 4/4 \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  
  % page 12
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  % page 13
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}
