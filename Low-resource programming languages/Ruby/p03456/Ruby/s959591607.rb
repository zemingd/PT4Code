a, b = gets.split(" ")

n  = (a+b).to_i
n2 = (n**(1/2.0)).floor

puts n2**2 == n ? "Yes" : "No"
