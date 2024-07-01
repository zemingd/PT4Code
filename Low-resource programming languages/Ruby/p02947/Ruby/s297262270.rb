# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007

N=gets.to_i
ss=N.times.map{gets.chomp.each_char.sort.join("")}.sort


count=1
old=""
ans=0
ss.each do |s|
  if old==s
    count+=1
  else
    if count>=2
      ans+=count*(count-1)/2
    end
    count=1
  end
  old=s
end
if count>=2
  ans+=count*(count-1)/2
end

puts ans