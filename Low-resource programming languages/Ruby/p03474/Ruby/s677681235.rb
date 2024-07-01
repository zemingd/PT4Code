a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
judge = true
a.times do |i|
  if s[i] == "-"
    judge = false
  end
end
if s[a] != "-"
  judge = false
end
b.times do |i|
  if s[a+1+i] == "-"
    judge = false
  end
end
if judge
  puts "Yes"
else
  puts "No"
end