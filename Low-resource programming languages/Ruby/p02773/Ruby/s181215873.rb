n = gets.to_i
words = Hash.new(0)
n.times { words[gets.chomp] += 1 }
array = words.to_a.sort {|a, b| (b[1] <=> a[1]).nonzero? || (a[0] <=> b[0])}
max = array.first[1]
array.each do |word, num|
  if num < max
    exit
  else
    puts word
  end
end
