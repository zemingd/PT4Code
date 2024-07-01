S = gets.chomp.split('')
ans = 0
S.each do |s|
  case s
  when '+' then ans+=1
  when '-' then ans-=1
  end
end
puts ans