n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

def num_of_elem(array)
  h = Hash.new{0}
  array.each do |key|
    h[key] += 1
  end
  h
end

num = num_of_elem(a)

ans = 1

a.max.times do |i|
  ans = [num[i] + num[i-1] + num[i+1], ans].max
end

p ans
