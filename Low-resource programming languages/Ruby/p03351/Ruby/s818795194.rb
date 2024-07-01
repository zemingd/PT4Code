a,b,c,d = gets.chomp.split(" ").map(&:to_i)
answer = "No"

if (a - c).abs <= d || ((a - b).abs <= d && (b - c).abs <= d)
  answer = "Yes"
end

puts answer
