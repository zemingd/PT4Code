n = gets.to_i
array = Array.new(n)
n.times do |i|
  a = gets.to_i
  array[i] = a.times.map{gets.chomp.split.map(&:to_i)}
end
ans = 0
(2**n).times do |i|
  cnt = i.to_s(2).count("1")
  flag = true
  n.times do |j|
    if i[j] == 1
      array[j].each do |x,y|
        flag = false if i[x-1] != y
      end
    end
  end
  ans = cnt if ans < cnt && flag
end

puts ans