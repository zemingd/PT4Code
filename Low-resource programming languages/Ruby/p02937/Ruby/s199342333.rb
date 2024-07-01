s = gets().chomp!
t = gets().chomp!

t.chars.each do |e|
  if s.index(e).nil?
    puts "-1"
    exit 0
  end
end

bigs = s * 100
pos = 0
t.chars.each do |e|
  i = bigs.index(e, pos)
  pos = i
end
puts pos+1


    
  
                  
               


