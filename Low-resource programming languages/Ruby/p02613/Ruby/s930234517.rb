n = gets.to_i
a = [0,0,0,0]
n.times do
    s = gets.chomp
    a[0] += 1 if s == "AC"
    a[1] += 1 if s == "WA"
    a[2] += 1 if s == "TLE"
    a[3] += 1 if s == "RE"
end
puts "AC x #{a[0]}"
puts "WA x #{a[1]}"
puts "TLE x #{a[2]}"
puts "RE x #{a[3]}"