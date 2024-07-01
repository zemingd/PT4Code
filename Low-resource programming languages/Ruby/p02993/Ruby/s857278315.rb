s=gets.chomp
tmp=''
ans = false
s.each_char do |c|
  if tmp==c
    ans = true
  end
  tmp=c
end
puts ans ? 'Bad' : 'Good'
