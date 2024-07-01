s = readline.chomp
l = 0
a = []
s.each_char do |c|
  if c =~ /[AGTC]/
    l += 1
  else
    a << l if l > 0
    l = 0
  end
end
a << l
puts a.max
    
