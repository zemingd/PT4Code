h,_ = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).inject(:+)
puts h <= a ? "Yes" : "No"