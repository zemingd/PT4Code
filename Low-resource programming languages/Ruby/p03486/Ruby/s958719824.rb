a= gets.chomp.split("")
b= gets.chomp.split("")

asorted = a.sort do |a, b|
  a <=> b
end

bsorted = b.sort do |a, b|
  a <=> b
end

if asorted.join < bsorted.join
  then puts "Yes"
else puts "No"
end