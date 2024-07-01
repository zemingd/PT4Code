s = gets.chomp.split(' ')
ans = []
s.each do |s|
  case s
  when '0' 
    ans << 0
  when '1'
    ans << 1
  when 'B'
    ans.pop
  end
end