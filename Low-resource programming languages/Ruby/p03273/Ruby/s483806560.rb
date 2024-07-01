h, w = gets.split.map(&:to_i)
trout = h.times.map { gets.chomp.chars }
2.times { trout = trout.select { |s| !s.all?('.') }.transpose }
trout.each { |s| puts s.join("") }