N = gets.to_i
c = [0,0,0,0]
N.times{|i|
  s = gets.chomp
  if s == "AC"
    c[0] = c[0] + 1
  elsif s == "WA"
    c[1] = c[1] + 1
  elsif s == "TLE"
    c[2] = c[2] + 1
  elsif s == "RE"
    c[3] = c[3] + 1
  end
}

puts "AC x " + c[0].to_s
puts "WA x " + c[1].to_s
puts "TLE x " + c[2].to_s
puts "RE x " + c[3].to_s