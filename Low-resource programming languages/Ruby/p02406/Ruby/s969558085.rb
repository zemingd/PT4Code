n = gets.to_i + 1
n.times do |i|
  if i == n - 1
    print " " + i.to_s + "\n"
  elsif i % 3 == 0 && i != 0
    print " " + i.to_s
  elsif i % 10 == 3
    print " " + i.to_s
  end
end