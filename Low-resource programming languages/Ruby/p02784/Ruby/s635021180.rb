h,n=gets.split.map(&:to_i)
aNsSums=gets.split.map(&:to_i).inject(:+)
puts h <= aNsSums ? "Yes" : "No"