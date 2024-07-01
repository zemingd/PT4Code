a,b,c = gets.split.map(&:to_i)
lp = a%b
1000000.times do |i|
  ngo = a * (i + 2) % b
  if ngo == c
    puts "YES"
    break
  end
  if lp == ngo
    puts "NO"
    break
  end
end