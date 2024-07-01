totalPrograms, totalChannels = STDIN.gets.split(" ").map{|x| x.to_i }
programs = []

totalPrograms.times {
    program = {}
    program[:start], program[:end], program[:channel] = STDIN.gets.split( " " ).map{|x| x.to_f}
    program[ :start ] -= 0.5
    programs << program
}

max_overlap_count = 0
programs.each { |p|
    t = p[ :start ]
    overlap_count = programs.reduce( 0 ) { |c, pp|
        if( pp[ :start ] <= t && pp[ :end ] > t )
            c + 1
        else
            c
        end
    }
    max_overlap_count = overlap_count if overlap_count > max_overlap_count
}
puts max_overlap_count
