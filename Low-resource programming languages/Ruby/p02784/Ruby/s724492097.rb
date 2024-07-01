h,n=gets.chomp.split(" ").map(&:to_i)
puts h>gets.chomp.split(" ").map(&:to_i).inject(:+) ? "No" : "Yes"