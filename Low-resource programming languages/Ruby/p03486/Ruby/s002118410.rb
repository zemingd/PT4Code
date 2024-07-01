s = gets.chomp.split("").sort
t = gets.chomp.split("")
ds = t.select{|e| s.include?(e)}
dt = t.select{|e| !ds.include?(e)}.sort
t = ds + dt

puts s.join("") < t.join("") ? "Yes" : "No"