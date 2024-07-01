S = gets.strip
T = gets.strip 

hs = Hash.new {|h, x| h[x] = []}
ht = Hash.new {|h, x| h[x] = []}

S.each_char.with_index do |c, i|
  hs[c] << i   
end

T.each_char.with_index do |c, i|
  ht[c] << i   
end

if hs.values == ht.values
  puts 'Yes'
else  
  puts 'No'
end