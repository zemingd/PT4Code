# Your code here!
num = gets.to_i
val = gets.split.map(&:to_i)
# p val


# numbers = [1, 2, 3, 4]
# p val.combination(2) {|a, b| printf("(%d, %d) ", a, b) }
sum = 0
a = val.combination(2) {|a, b| sum += (a * b) }
p sum