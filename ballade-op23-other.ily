%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0 % 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

rallentSpanner = \makeSpanner \markup \large \italic rallent.
accelSpanner = \makeSpanner \markup \large \italic accel.

sempreDimMarkup = \markup \large \italic "sempre dim."
sempreDim =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text sempreDimMarkup)

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}

tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

strictSpacingOn = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}

strictSpacingOff = {
  \override Score.SpacingSpanner.strict-note-spacing = ##f
  \newSpacingSection
}

barLinesOff = {
  \omit Staff.BarLine 
  \omit Score.SpanBar
}

barLinesOn = {
  \undo \omit Staff.BarLine
  \undo \omit Score.SpanBar
}

makeHalfNote = \tweak duration-log 1 \etc

%
% Markup
%

leggieramente = \markup \large \italic leggieramente
appassionato = \markup \large \italic appassionato
riten = \markup \large \italic riten.
ten = \markup \large \italic ten.
ms = \markup \large \italic m.s.
md = \markup \large \italic m.d.
smorz = \markup \large \italic smorz.
accelerando = \markup \large \italic accelerando
accel = \markup \large \italic accel.
agitato = \markup \large \italic agitato
animato = \markup \large \italic animato
calando = \markup \large \italic calando
crescMarkup = \markup \large \italic cresc.
semprePiuMosso = \markup \large \italic "sempre più mosso"
semprePiuAnimato = \markup \large \italic "sempre più animato"
piuVivo = \markup \large \italic "più vivo"
ilPiuFortePossibile = \markup \large \italic "il più forte possibile"
sotoVoce = \markup \large \italic "soto voce"
conForza = \markup \large \italic "con forza"
aTempo = \markup \large \italic "a tempo"
menoForte = \markup \large \italic "(meno forte)"
nonDimin = \markup \large \italic "(non dimin.)"
sempreForte = \markup \large \italic "sempre forte"
dimRallent = \markup \large \italic "dim. rallent."
pocoRiten = \markup \large \italic "poco riten."
fPesante = \markup { \dynamic f \normal-text \large \italic pesante }
PpSempreSottoVoce = \markup { 
  \dynamic pp \normal-text \large \italic \pad-markup #0.1 "sempre sotto voce"
}
piuPParen = \markup { \concat { \large "(più " \dynamic p \large ")" } }
pScherzando = 
  \markup { \concat { "(" \dynamic p ") " \large "scherzando" } }
pRiten = \markup { \dynamic p \large \italic riten. }
fffPocoRiten = \markup { 
  \dynamic fff \large \italic \whiteout \pad-markup #0.25 "poco riten." 
}
semprePP = \markup { \large \italic sempre \dynamic pp }
trillSharp = \markup \teeny \sharp
sfMarkup = \markup \dynamic sf

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 4) (3 . -3) (0 . -5) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 1) (3 . -1) (0 . -4) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 4) (3 . -2) (0 . -5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 4) (3 . -2) (0 . -5) (0 . 0)) \etc
slurShapeE = \shape #'((-1.5 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeG = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 3) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeI = \shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 0.25)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'((0 . 3) (0 . -1) (0 . -1) (0 . 3)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 3)) \etc
slurShapeM = \shape #'((0 . 0) (5 . -1) (0 . 1.5) (0 . 1)) \etc
slurShapeN = \shape #'((0 . 0) (3 . 0) (0 . 0) (0 . 1)) \etc
slurShapeO = \shape #'((0 . 0) (3 . 0) (0 . 0) (0 . 1)) \etc
slurShapeP = \shape #'((0 . 0) (5 . -1) (0 . 1.5) (0 . 1)) \etc
slurShapeQ = \shape #'((0 . 0) (3 . 0) (0 . 0) (0 . 1)) \etc
slurShapeR = \shape #'((0 . 0) (3 . 0) (0 . 0) (0 . 1)) \etc
slurShapeS = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0.5) (0 . 2) (0 . 3))
                      ) \etc
slurShapeT = \shape #'((0 . 3) (0 . 1) (0 . -0.5) (0 . 0)) \etc
slurShapeU = \shape #'((0 . 3) (0 . 0) (0 . 0) (0 . 3)) \etc
slurShapeV = \shape #'((0 . 3) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeW = \shape #'((0 . 0) (0 . -0.5) (0 . -2) (0 . 0)) \etc
slurShapeX = \shape #'((0 . 0) (0 . -0.5) (0 . -2) (0 . 0)) \etc
slurShapeY = \shape #'((0 . -1) (0 . 0) (0 . 3) (-0.5 . -3)) \etc
slurShapeZ = \shape #'((0 . 0) (0 . 0) (0 . 3) (0 . 0.5)) \etc
slurShapeAA = \shape #'((-0.25 . 3.75) (0.5 . 3) (0 . 1) (0 . -0.5)) \etc
slurShapeAB = \shape #'(
                         ((0 . -3) (0 . 2) (0 . 3) (2.5 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAC = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0 . 3)) \etc
slurShapeAD = \shape #'((0 . 0) (5 . -1) (0 . 0) (0 . 0)) \etc
slurShapeAE = \shape #'((0 . 1) (0 . -1.5) (0 . -2) (0 . 1)) \etc
slurShapeAF = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 5) (-1 . -2))
                       ) \etc
slurShapeAG = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeAH = \shape #'((0 . -1) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeAI = \shape #'((0 . 2) (0 . 0) (0 . -1) (0 . 0)) \etc
slurShapeAJ = \shape #'((0 . 0) (0 . 2) (0 . 1) (0 . 0)) \etc
slurShapeAK = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeAL = \shape #'((0 . 0) (4 . -7) (0 . -3) (0 . 3)) \etc
slurShapeAM = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 3) (2 . -4) (0 . -7) (0 . 0.5))
                       ) \etc

pSlurShapeA = \shape #'(
                         ((0 . 1) (0 . 1) (0 . 1) (0 . 1))
                         ((1.5 . 2) (1.5 . 0) (0 . 1) (0 . 1))
                       ) \etc
pSlurShapeB = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 1.5)) \etc

tieShapeA = \shape #'((0 . 0) (0 . 1.5) (0 . 1.5) (0 . 0)) \etc

moveTextA = 
  \tweak outside-staff-priority ##f 
  \tweak X-offset 0.5 
  \tweak Y-offset 5 
  \etc
moveTextB = \offset Y-offset 0.5 \etc 
moveTextC = \offset Y-offset -2.25 \etc 
moveTextD = \offset Y-offset -2 \etc
moveTextE = \tweak X-offset -3 \etc
  
moveTrillA = 
  \tweak avoid-slur #'inside
  \tweak X-offset 1
  \etc

moveOttavaA = \offset OttavaBracket.Y-offset 1.5 \etc
moveOttavaB = \offset OttavaBracket.Y-offset 1.5 \etc
  
rotateHairpinA = \once \override Hairpin.rotation = #'(8 -1 0)
rotateHairpinB = \once \override Hairpin.rotation = #'(10 -1 0)
rotateHairpinC = \once {
  \override Hairpin.rotation = #'(13 -1 0)
  \override Hairpin.Y-offset = 8.5
}
