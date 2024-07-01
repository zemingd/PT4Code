n = gets.to_i
ac = "AC"
wa = "WA"
tle = "TLE"
re = "RE"
c = [0, 0, 0, 0]
n.times do |i|
  case gets.chomp
  when ac
    c[0] += 1
  when wa
    c[1] += 1
  when tle
    c[2] += 1
  when re
    c[2] += 1
  end
end
puts ac + " x " + c[0].to_s
puts wa + " x " + c[1].to_s
puts tle + " x " + c[2].to_s
puts re + " x " + c[3].to_s