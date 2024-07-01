N = gets.to_i
a,b,c,d = 0,0,0,0
N.times do
  s = gets.chomp
  if s == "AC"
    a += 1
  elsif s == "WA"
    b += 1
  elsif s == "TLE"
    c += 1
  else
    d += 1
  end
end
puts "AC x #{a}"
puts "WA x #{b}"
puts "TLE x #{c}"
puts "RE x #{d}"