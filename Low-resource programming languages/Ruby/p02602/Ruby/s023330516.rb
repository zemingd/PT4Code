input = readlines()
n, k = input.shift.chomp.split("\s").map{|x| x.to_i}
list = input.shift.chomp.split("\s").map{|x| x.to_i}

prev = nil
(k..n).each do |term|
  score = nil
  ((term - k + 1)..term).each do |t_i|
    score = score.nil? ? list[t_i - 1] : score * list[t_i - 1]
  end
  if term == k
    prev = score
    next
  end
  puts score > prev ? 'Yes' : 'No'
  prev = score
end
