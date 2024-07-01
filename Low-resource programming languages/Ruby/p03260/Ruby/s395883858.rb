a, b = gets.chomp.split("\s").map{|x| x.to_i}

found = false
(1..3).each do |c|
  found = true if (a * b * c).odd?
end

puts found == true ? 'Yes' : 'No'
