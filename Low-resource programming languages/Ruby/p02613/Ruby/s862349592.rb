n = gets.to_i

a = 0
w = 0
t = 0
r = 0

texts = []
n.times do |text|
  text = gets.chomp
  case
  when text == "AC"
    a += 1
  when text == "WA"
    w += 1
  when text == "TLE"
    t += 1
  else
    r += 1
  end
end

puts "AC x #{a}"
puts "WA x #{w}"
puts "TLE x #{t}"
puts "RE x #{r}"
