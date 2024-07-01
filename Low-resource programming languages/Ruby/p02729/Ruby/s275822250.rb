line = gets.chomp.split().map(&:to_i)
arr = []
# evenループ
num = 0
while num < line[0]
  arr << 0
  num += 1
end
# oddループ
num = 0
while num < line[1]
  arr << 1
  num += 1
end


arrs = arr.combination(2).to_a.map { |ele| ele.inject(:+) } 
# > [0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2]
num = 0
arrs.each {|dd| dd.even? ? num += 1 : num += 0 }
puts num