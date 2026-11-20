\version "2.24.4"

today = #(strftime "%d.%m.%Y" (localtime (current-time)))

\header {
	title = "Für Elise"
	composer = "Ludwig van Beethoven"
	tagline = ##f
	arranger = \markup { "Arrangement: timm@knp.de" \today }
}

\paper {
	#(set-paper-size "a4")
	page-count = #2
	ragged-last-bottom = #f
}

melodie_auftakt = {
% 0
	e'8 <dis\3-2> |
% 1
}

melodie_thema = {
% 1
	e8 dis\3 e b <d-4> <c-1> |
	<a-3>4 s8 <c,-4> <e-2> <a-3> |
	b4 s8 e, <gis-1> b |
	<c-1>4 s4 e8 <dis\3-2> |
% 5
	e8 <dis\3-2> e b <d-4> <c-1> |
	<a-3>4 s8 <c,-4> <e-2> <a-3> |
	b4 s8 e, <gis-1> b |
% 8
}

melodie_wiederholung_thema = {
% 8
	<c-1>4 s4 e8 <dis\3-2> |
% 9
}

melodie_nebenthema = {
% 9
	<a-3>4 s8 b <c\3-4> <d-2> |
	e4. g,8 <f'-1> e |
	<d-4>4. e,8 e' <d-4> |
	<c-1>4. e,8 <d'-4> <c-1> |
% 13
	b8 <e,-2> s8 e e' e, |
	e'8 e \override Staff.NoteHead.style = #'harmonic-mixed <e'-3>
		\revert Staff.NoteHead.style <dis,\3-2> <e\3-3> <dis\3-2> |
% 15
}

melodie_kadenz_eins = {
% 15
	<a-3>4 s8 <e-3 c'-2> <f-3 c'-1> <e-2 c'> |
	<c'-1>4 s f8 e |
	e4 <d-4> <bes'-4>8 <a-3> |
	<a-3>8 <g-1> <f-4> e <d-4> <c-1> |
% 19
	<bes-4>4 <a-2> a16( g) a b |
	<c-1>2 <d-4>8 <dis-4> |
	e4. e8 <f-1> <a,-2> |
	<c-1>2 <d-4>8 b |
% 23
	<c-1>16 <g'-4> g, g' <a,-2> g' b, g' <c,-1> g' <d-3> g |
	<e\2-3>16 <g-1> <c-4> <b-3> <a-1> <g\2-4> <f\2-2> <e> <d-3> <g-4> <f-2> <d-4> |
	<c-1>16 <g'-4> g, g' <a,-2> g' b, g' <c,-1> g' <d-3> g |
	<e\2-3>16 <g-1> <c-4> <b-3> <a-1> <g\2-4> <f\2-2> <e\2-1> <d\3-3> <g\2-4> <f\2-2> d\3 |
% 27
	d16\3 f\2 e <dis\3-4> e b e d\3 e b e d\3 |
	e4. b8 e <dis-2> |
	e4. b8 e <dis\3-2(> |
	<e\3-3)>8 dis\3( e\3) dis\3( e\3) dis\3 | 
% 31
}

melodie_kadenz_zwei = {
% 31
	<a-2>4 s2 |
	<g-4 bes-2 des-1>2. |
	<f-2 a-1 d-3>2 <cis'-2 e>8 <d-3 f-1> |
	<as-1 d-3 f-1>2 <as d f>4 |
% 35
	<a-2 c-1 e>2. |
	<f-3 d'-4>2 <e-2 c'-1>8 <d b'> |
	<c-2 a'-1>2 <c a'>4 |
	<c a'>4 <e-2 c'-1> <c a'> |
% 39
	<c-2 a'-1>2. |
	<g'-4 bes-2 des-1>2. |
	<f-2 a-1 d-3>2 <cis'-2 e>8 <d-3 f-1> |
	<d f>2 <d f>4 |
% 43
	<d-3 f-1>2. |
	<g, es'-4>2 <f-3 d'-4>8 <es-1 c-1> |
	<d b'>2 <d b'>4 |
	<d as'-2>2 <d as'>4 |
% 47
	<e-1 a-1>2 s4 |
	<e-1 b'>4 s2 |
	\times 2/3 { a,8( <c-4>) <e-3> } \times 2/3 { <a-2> <c-1> e }
		\times 2/3 { <d-3>( <c-1>) b } |
	\times 2/3 { <a-2>8 <c-1> e } \times 2/3 { <a\2-1> <c\2-2> <e-1> }
		\times 2/3 { <d\2-4> <c\2-2> <b\2-1> } |
% 51
	\times 2/3 { <a\3-3>8 <c\2-2> <e-1> } \times 2/3 { <a-1> <c-2> <e-4> }
		\times 2/3 { <d-3> <c-2> <b-1> } |
	\times 2/3 { <bes-4>8 <a-3> <as-2> } \times 2/3 { <g-1> <ges\2-4> <f\2-3> }
		\times 2/3 { <e\2-2> <es\2-1> <d\3-4> } |
	\times 2/3 { <des\3-3> <c\3-2> <b\3-1> }
		\times 2/3 { <bes\3-1> <a\4-4> <as\4-3> }
		\times 2/3 { <g\4-2> <ges\4-1> <f\4-1> } |
% 54
}

melodie_ende = {
% 54
	<e,-2 a-3>2 s4 \bar "|."
% 55
}

bass_auftakt = {
% 0
	s4 |
% 1
}

bass_thema = {
% 1
	<b,\6-1>4 <e\5-1>8 s e,4 |
	a8 <e'-2> \deadNote <e, a>8 s a4 |
	e8 <e'-3> \deadNote <e, a>4 <b'-2> |
	a8 <e'-2> \deadNote <a, d> <e'\5-1> e,4 |
% 5
	<b'\6-1>4 <e\5-1>8 s e,4 |
	a8 <e'-2> \deadNote <e, a>8 s a4 |
	e8 <e'-3> \deadNote <e, a>4 <b'-2> |
% 8
}

bass_wiederholung_thema = {
% 8
	a8 <e'-2> \deadNote <a, d> <e'\5-1> e,4 |
% 9 
}

bass_nebenthema = {
% 9
	a8 <e'-2> \deadNote <a, d>4 a |
	<c-1>8 g' \deadNote <a, d>4 <e'-2> |
	<g,-3>8 g' \deadNote <e, a>4 <g-3> |
	a8 <e'-2> \deadNote <a, d>4 a |
% 13
	e8 <e'-2> \deadNote e,4 e |
	e8 <b'\6-1> \override Staff.NoteHead.style = #'harmonic-mixed <e\6-3>4
		\revert Staff.NoteHead.style e, |
% 15
}

bass_kadenz_eins = {
% 15
	a8 <e'-2> \deadNote <e, a> <bes'-1> a <g-3> |
	<f-1>8 <f'-4> <a-2> c <c,-3> a |
	f8 <bes'-3>4 bes8 d,4 |
	<f-1>4. <e-2>8~ e4 |
% 19
	<f-3>8 a,4 a8 <c-3> a |
	<f'-3>8 a, \deadNote <e a> a <c-3> a |
	e8 a \deadNote <e a> a d a |
	g'8 <e-2> \deadNote <g, b> <f'-3> <g,-2> g' |
% 23
	<e-2>4. <f-3>8 <e-2> d |
	<c-1>8 s s4 g'8 s |
	<e-2>4. <f-3>8 <e-2> d |
	<c-1>8 s s4 <g'\4-1>8 s |
% 27
	<as,-1>4 s s |
	s4 \deadNote <e a> s |
	s4 \deadNote <e a> s |
	s4 \deadNote <e a> e |
% 31
}

bass_kadenz_zwei = {
% 31
	a8 a \deadNote <e a> a a a |
	a8 a \deadNote <e a> a a a |
	a8 a \deadNote <e a> a a a |
	a8 a \deadNote <e a> a a a |
% 35
	a8 a \deadNote <e a> a a a |
	a4 \deadNote <e a> s |
	e4 \deadNote <e a> s |
	e8 e e e gis gis |
% 39
	a8\6 a\6 \deadNote a\6 a\6 a\6 a\6 |
	a8 a \deadNote <e a> a a a |
	a8 a \deadNote <e a> a a a |
	a8 a \deadNote <e a> a a a |
% 43
	bes8 bes \deadNote <f bes> bes bes bes |
	bes8 bes \deadNote <f bes> bes bes bes |
	bes8 bes \deadNote <f bes> bes bes bes |
	bes8 bes \deadNote <f bes> bes bes bes |
% 47
	c4 \deadNote e, s |
	<gis-4>4 \deadNote <e a> s |
	s2 a4 |
	a4 s a |
% 51
	a2 a4 |
	s2. |
	s2 e4 |
% 54
}

bass_ende = {
% 54
	a2 s4 \bar "|."
% 55
}

melodie = {
	\tempo 4 = 70
	\voiceOne
	\set fingeringOrientations = #'(left)
	\melodie_auftakt
	\repeat volta 8 {
		\melodie_thema
		\alternative {
			\volta 1 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\melodie_wiederholung_thema
			}
			\volta 2,3,5,7 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\melodie_nebenthema
			}
			\volta 4 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\melodie_kadenz_eins
			}
			\volta 6 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\melodie_kadenz_zwei
			}
			\volta 8 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\melodie_ende
			}
		}
	}
}

bass = {
	\tempo 4 = 70
	\voiceTwo
	\set fingeringOrientations = #'(left)
	\bass_auftakt
	\repeat volta 8 {
		\bass_thema
		\alternative {
			\volta 1 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\bass_wiederholung_thema
			}
			\volta 2,3,5,7 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2. 
				\bass_nebenthema
			}
			\volta 4 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\bass_kadenz_eins
			}
			\volta 6 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\bass_kadenz_zwei
			}
			\volta 8 {
				\once \override Score.VoltaBracket.musical-length = \musicLength 2.
				\bass_ende
			}
		}
	}
}

guitar = <<
	\time 3/4
	\partial 4
	\clef "treble_8" \key a \minor
	\new Voice \relative { \melodie }
	\new Voice \relative { \bass }
>>

guitar_tab = <<
	\time 3/4
	\partial 4
	\clef "tab"
	\new TabVoice \relative { \melodie }
	\new TabVoice \relative { \bass }
>>

\book {
	\score {
		<< 
			\new Staff { \guitar }
			\new TabStaff { \guitar_tab }
		>>
		\layout {
			indent = 0\in
			\omit Voice.StringNumber
		}
	}
	\score {
		\unfoldRepeats
		<< \new Staff \with { midiInstrument = "acoustic guitar (nylon)" } { \guitar } >>
		\midi { }
	}
}

