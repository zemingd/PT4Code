a, b = gets.chomp.split(" ").map(&:to_i)
print("#{(a..b).count{|num| num.to_s == num.to_s.reverse}}")