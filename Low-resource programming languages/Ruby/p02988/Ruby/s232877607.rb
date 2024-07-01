n = gets.chomp.to_i
pp = gets.chomp.split(' ').map{|i| i.to_i }

count = 0
(pp.length - 2).times {|i|
  ii = i + 1
  # p [pp[ii - 1], pp[ii], pp[ii + 1]]
  # p pp[i]
  if [pp[ii - 1], pp[ii], pp[ii + 1]].sort[1] == pp[ii]
    count += 1
  end
}

puts count
