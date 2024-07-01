a, b = gets.strip.split
n = (a+b).to_i

puts n.sqrt.to_s =~ /^[0-9]+$/ ? 'Yes' : 'No'
