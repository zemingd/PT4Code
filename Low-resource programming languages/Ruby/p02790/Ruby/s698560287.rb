a,b = gets.strip.split.map(&:to_i)
ra = ''
rb = ''
a.times do |num|
  rb+=b.to_s
end
b.times do |num|
  ra+=a.to_s
end


if a > b 
  puts rb 
elsif a <= b 
  puts ra 
end
  
