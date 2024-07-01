ac, wa, tle, re = 0, 0, 0, 0
t = gets.to_i
t.times do
  case gets.chomp
    when "AC"; ac += 1
    when "WA"; wa += 1
    when "TLE"; tle += 1
    when "RE"; re += 1
  end
end

puts <<EOF
AC x #{ac}
WA x #{wa}
TLE x #{tle}
RE x #{re}
EOF