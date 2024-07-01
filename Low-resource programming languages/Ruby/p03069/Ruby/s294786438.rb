n = gets.chomp.to_i
s = gets.chomp

#puts "now s = #{s}"


count_1=0
count_2=0
flag = 0

kuro=[]
shiro=[]
#kuroの処理(先頭から)
s.length.times do |i|
  if s[i]=="#" then
    count_1+=1 
  end
  kuro << count_1
end
flag = 0

#shiroの処理(末尾から)
s.length.times do|i_kari|
  i = (s.length-1)-i_kari
  if s[i]=="." then
    count_2 += 1
  end 
  shiro.unshift(count_2)
end
#puts "kuro = #{kuro}"
#puts "shiro = #{shiro}"

min = 2*(10**5)
(s.length-1).times do|i|
  #puts "kuro[#{i}] = #{kuro[i]}"
  #puts "shiro[#{i}] = #{shiro[i]}"
  if min>(kuro[i] + shiro[i+1]) then
    min = (kuro[i] + shiro[i+1])
  end
end

if kuro[0] == kuro[kuro.length-1] || shiro[0] == shiro[shiro.length-1] then
  puts "0"
else
  puts min
end