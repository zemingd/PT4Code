require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
# S = gets_s

n = gets_i

total = 0

ac, wa, tle, re = 0, 0, 0, 0, 0

n.times do
  s = gets_s
  if s == "AC"
    ac += 1
  elsif s == "WA"
    wa += 1
  elsif s == "TLE"
    tle += 1
  elsif s == "RE"
    re += 1
  end
end

puts "AC x " + ac.to_s
puts "WA x " + wa.to_s
puts "TLE x " + tle.to_s
puts "RE x " + re.to_s
