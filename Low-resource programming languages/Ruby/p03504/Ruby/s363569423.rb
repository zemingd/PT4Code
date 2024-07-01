totalPrograms, totalChannels = STDIN.gets.split(" ").map{|x| x.to_i }
program_times = []
totalPrograms.times {
    start, stop, channel = STDIN.gets.split( " " ).map{|x| x.to_f}
    start -= 0.5
    channel -= 1
    program_times << ['S', start, channel]
    program_times << ['E', stop, channel]
}

program_times.sort! {|t1, t2| t1[1] - t2[1]}

maxRecording = 0
recording = 0
recordingChannels = Array.new(30,0)
program_times.each { |t|
    if( t[0] == 'S' )
        recording += 1 if recordingChannels[ t[2] ] == 0
        recordingChannels[ t[2] ] += 1
    elsif( t[0] == 'E' )
        recordingChannels[ t[2] ] -= 1
        recording -= 1 if recordingChannels[ t[2] ] == 0
    end
    maxRecording = recording if recording > maxRecording
}
puts maxRecording
