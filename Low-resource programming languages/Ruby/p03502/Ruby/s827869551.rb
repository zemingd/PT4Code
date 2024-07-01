a,b = gets.chomp.split("")
c = ((a+b).to_i)
puts c%(a.to_i + b.to_i) == 0 ? "Yes" : "No"