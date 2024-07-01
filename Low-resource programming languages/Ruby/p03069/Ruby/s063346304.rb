n = gets.chop.to_i
s = gets.chop

m = s.split("")

t = s.split(/\.+/,2).to_s

if m.count(".") == n
  puts 0
elsif m[0] == "."
  cnt = t.count(".")
  puts cnt
else
  puts s.count(".")
end
