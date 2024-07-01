n=gets.to_i
s=gets.chomp
c=0
(n-2).times do |i|
  if s[i,3]=="ABC"
    c+=1
  end
end
puts c