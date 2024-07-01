n = gets
m = n.split("").map(&:to_i).inject{|sum, n| sum + n }
if n.to_i%m == 0
  puts "Yes"
  exit
end
  puts "No"
