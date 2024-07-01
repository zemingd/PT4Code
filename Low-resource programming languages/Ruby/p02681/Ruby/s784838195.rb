s = gets.strip.split("")
t = gets.strip.split("")
s << t[-1]
puts s == t ? "Yes" : "No"