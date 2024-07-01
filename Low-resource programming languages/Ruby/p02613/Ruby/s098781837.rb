arr = gets.chomp.split("\n")
ac = 0
wa = 0
tle = 0
re = 0

arr.each do |i|
  case i
  when "AC"
    ac += 1
  when "WA"
    wa += 1
  when "TLE"
    tle += 1
  when "RE"
    re += 1
  end
end
  puts <<"EOS"
AC x #{ac}
WA x #{wa}
TLE x #{tle}
RE x #{re}"
EOS
