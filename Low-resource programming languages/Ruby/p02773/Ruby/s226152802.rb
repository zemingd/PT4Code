n = gets.chomp

words = {}

n.to_i.times {
  word = gets.chomp
  if words.has_key?(word)
    words[word] += 1
  else
    words[word] = 1
  end
}

by_num = words.to_a.sort {|a,b| b[1] <=> a[1]}
num = by_num[0][1]
selected = by_num.select {|w| w[1] == num}

selected.map{|w| w[0]}.sort{|a,b| a <=> b}.each{|w|
  puts w
}

