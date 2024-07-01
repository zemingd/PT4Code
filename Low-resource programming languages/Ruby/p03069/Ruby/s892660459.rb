n = gets.chomp.to_i
s = gets.chomp
min = 2*(10**5)

kuro=[]
shiro=[]
kuro_count=0
shiro_count=0
n.times do|i|
  if s[i] == "#" then
    kuro_count+=1 
  end
  if s[(n-1)-i] == "." then
    shiro_count+=1
  end
  kuro << kuro_count
  shiro.unshift(shiro_count)
end
#puts "shiro = #{shiro}"
#puts "kuro  = #{kuro}"

(n-1).times do |i|
  m = shiro[i+1] + kuro[i]
  if min>m then
    min=m
  end
end

#puts "min=#{min}"
puts [min,kuro[n-1],shiro[0]].min


