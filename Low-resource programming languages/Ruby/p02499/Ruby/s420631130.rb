s = gets.downcase
ary = Array.new(26).fill(0)
s.each_char do |ch|
  ary[ch.ord-'a'.ord]+=1 if ary[ch.ord-'a'.ord]!=nil
end
for i in 'a'..'z'
  puts "#{i}:#{ary[i.ord-'a'.ord]}"
end