gets # disrad 1 line

input = gets.chomp.split.map{|e| e.to_i / 400  }

input_less = input.select{|item| item < 8}

input_more = input.select{|item| item >= 8}

answer_min = input_less.uniq.length

answer_max = [8, answer_min + input_more.length].min

puts "#{answer_min} #{answer_max}"
