a, b = gets.strip.split
n = (a+b).to_i

puts Math.sqrt(n) =~ /^[0-9]+$/ ? 'Yes' : 'No'
