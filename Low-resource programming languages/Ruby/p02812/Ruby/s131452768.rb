x = gets.strip.split.map(&:to_i)
ss = gets.strip.split('')
n = 0
sum = 0
ss.each do |s|
  if s == 'A' && ss[n+1] == 'B' && ss[n+2] == 'C'
    sum+=1
  end
  n+=1
end
puts sum
