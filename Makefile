.PHONY: all clean

Inputs := ${wildcard *.ily}
Outputs := ${Inputs:.ily=.pdf} ${Inputs:.ily=.midi}
Build_Files := ${Inputs:.ily=.build}

Outputs += fuer-elise-duo-bass.midi fuer-elise-duo-bass.pdf
Outputs += fuer-elise-duo-melodie.midi fuer-elise-duo-melodie.pdf

all: ${Outputs}

clean:
	rm -f ${Outputs} ${Build_Files}

%.build: %.ily
	lilypond $^
	touch $@

%.pdf: %.build
	touch $@

%.midi: %.build
	touch $@
