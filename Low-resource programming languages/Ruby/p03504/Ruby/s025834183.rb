totalPrograms, totalChannels = STDIN.gets.split(" ").map{|x| x.to_i }
programs = []
totalPrograms.times {
    program = {}
    program[:start], program[:end], program[:channel] = STDIN.gets.split( " " ).map{|x| x.to_f}
    program[ :start ] -= 0.5
    programs << program
}

programs.sort! {|a,b| a[ :start ] - b[ :start ] }

recording = []
maxRecording = 0
programs.each { |new_program|
    t = new_program[:start]
    recording = recording.select{ |p| p[:start] <= t && t < p[:end] }
    recording << new_program
    maxRecording = recording.length if maxRecording < recording.length
}

puts maxRecording

