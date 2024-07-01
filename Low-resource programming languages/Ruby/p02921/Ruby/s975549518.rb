# a = gets.to_i
# b = gets.to_i
s = gets.chomp
t = gets.chomp
# s,t = gets.split.map(&:to_s)
# r= gets.split.map(&:to_i)

# s = gets.chomp.chars.uniq
# puts gets.chomp.chars.uniq.size != 1 ? "Yes" : "No"
# r = a-b
ans=0
3.times{|i| ans+=1 if s[i]==t[i]}
p ans