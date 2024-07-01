L, R = gets.split.map(&:to_i)
min = 2018

(L...R).each do |i|
  (i+1..R).each do |j|
    (puts min ; exit) if min == 0
    mod = (i * j) % 2019
    min = mod if mod < min
  end
end

puts min