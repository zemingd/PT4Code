n=gets.to_i
s=gets.chomp.split('')
n.times do
  s=s.map{|t|t!='Z' ? t.next! : 'A'}
end
p s.join
