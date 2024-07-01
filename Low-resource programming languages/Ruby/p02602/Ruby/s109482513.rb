input = readlines()
n, k = input.shift.chomp.split("\s").map{|x| x.to_i}
list = input.shift.chomp.split("\s").map{|x| x.to_i}

prev = nil

prev_mul = nil
if k > 1
  (1..k - 1).each do |term|
    prev_mul = prev_mul.nil? ? list[term - 1] : prev_mul * list[term - 1]
  end
end

prev = prev_mul
(k..n).each do |term|
  score = k == 1 ? list[term - 1] : prev * list[term - 1] / list[term - k - 1]
  if term == k
    prev = score
    next
  end
  puts score > prev ? 'Yes' : 'No'
  prev = score
end
