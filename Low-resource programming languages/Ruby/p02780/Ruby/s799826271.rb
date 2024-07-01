s, t = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
max_array = []
maximum = 0
num = 0

(0..s-t).each do |i|
  tmp = array[i..i+t-1]
  num = tmp.inject(:+)
  if maximum < num
    max_array = tmp
    maximum = num
  end
end

ans = 0
max_array.each do |m|
  ans += (1..m).inject(:+).to_f / m
end

puts ans