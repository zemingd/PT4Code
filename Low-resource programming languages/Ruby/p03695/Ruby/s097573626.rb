# gets # disrad 1 line

input = gets.chomp.split.map{|e| e.to_i / 400  }

input_less = input.select{|item| item < 8}
input_more = input.select{|item| item >= 8}

if input_less.length > 0

  answer_min = input_less.uniq.length
  answer_max = answer_min + input_more.length


else
  answer_min = 1
  answer_max = input_more.length

end

puts "#{answer_min} #{answer_max}"
