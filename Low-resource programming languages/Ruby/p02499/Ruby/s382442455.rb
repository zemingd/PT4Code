h = {}
for i in 'a'..'z' do
  h[i] = 0
end
while s= gets
  s.downcase.each_char{|ch|h[ch]+=1 if h.key?(ch)}
end
h.each_key{|key|puts "#{key} : #{h[key]}"}