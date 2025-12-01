# VHDL Whiz tutorial

This is from the [youtube](https://youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&si=grp3_HIUZ-mGkn-s) beginner's tutorial, but using GHDL instead.

## VSCode

Install VaporView, you can open the VCD files to view the waveforms.

Right click on the timeline and change to ns to match the timescale of the waits.

I had an issue with this plugin window turning fully grey on T10 with the second driver and adding either Signal2 or 3, I don't know why that happened, but after running the GHDL a number of times, it finally showed the wave forms correctly.

## GTKWave

On KDE plasma with HiDPI and not great eyesight, I find it hard to see the text and GDK_SCALE doesn't work.

Also, it doesn't automatically scale the timeline to the waveform, which is really annoying.

## Vaporview

This is a good extension, but I've not been able to find out how to separate out the array of bits as separate signals in the view.

For T16, `DataWidth` will not be a visible data point for display like with ModelSim in the video.

In T18, it's not possible for ghdl to run the simulation for 24 hours with `---stop-time=86400secs`

For T20, to get a visible State signal within the waveform, change from VCD format to GHW.
