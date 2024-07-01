totalPrograms, totalChannels = STDIN.gets.split(" ").map{|x| x.to_i }
program_times = []
totalPrograms.times {
    start, stop, channel = STDIN.gets.split( " " ).map{|x| x.to_f}
    start -= 0.5
    program_times << ['S', start, channel - 1]
    program_times << ['E', stop, channel - 1]
}

program_times.sort! {|t1, t2| t1[1] - t2[1]}

maxRecording = 0
recordingChannels = Array.new(30,0)
program_times.each { |t|
    if( t[0] == 'S' )
        recordingChannels[ t[2] ] += 1
    elsif( t[0] == 'E' )
        recordingChannels[ t[2] ] -= 1 if recordingChannels[ t[2] ] > 0
    end

    recording = recordingChannels.reduce( 0 ) { |cnt, v| v > 0 ? cnt + 1 : cnt }
    maxRecording = [ recording, maxRecording ].max
}
puts maxRecording

