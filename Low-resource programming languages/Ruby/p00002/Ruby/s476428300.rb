data = [3]
result = [3]

3.times{|i|
  dataA = gets.chomp
  dataB = gets
  data[i] = dataA.to_i+dataB.to_i
  result[i] =  data[i].to_s.length
}

3.times{|j|
  puts result[j]
}