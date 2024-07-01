require 'prime'
c = 0
gets.to_i.times do |j|
  f = []
  next if (j + 1).even?
  (j+1).prime_division.each do |i|
    f.push(i[1])
  end
  c += 1 if f.map{|i| i + 1}.inject(:*) == 8
end
p c

