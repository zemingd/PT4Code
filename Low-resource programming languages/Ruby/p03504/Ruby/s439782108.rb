totalPrograms, totalChannels = STDIN.gets.split(" ").map{|x| x.to_i }
program_times = []
totalPrograms.times {
    start, stop, channel = STDIN.gets.split( " " ).map{|x| x.to_f}
    start -= 0.5
    program_times << ['S', start]
    program_times << ['E', stop ]
}

program_times.sort! {|t1, t2| t1[1] - t2[1]}

recording = 0
maxRecording = 0
program_times.each { |t|
    if( t[0] == 'S')
        recording += 1
    elsif( t[0] == 'E')
        recording -= 1
    end
    maxRecording = [ recording, maxRecording ].max
}
puts maxRecording

