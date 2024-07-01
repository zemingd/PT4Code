n = gets.to_i
s = []
while g = gets
  s << g.chomp.split('').sort
end
# p s
arr = {}
s.each do |ss|
  arr[ss.join('')].nil? ? arr[ss.join('')]=1 : arr[ss.join('')]+=1
end
# p arr
# p s.group_by{|a|a}
p arr.map{|k,v|v==1 ? 0 : (1..(v-1)).inject(&:+)}
.inject(&:+)
