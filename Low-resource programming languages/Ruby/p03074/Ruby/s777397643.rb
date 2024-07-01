n,k=gets.split.map(&:to_i)
s = gets
i=-1
zo=[-1]
oz=[]
if s[0] == '0'
  oz << -1
else

end
loop do
  i=s.index('01',i+1)
  break if i.nil?
  zo << i
end

i=-1
loop do
  i=s.index('10',i+1)
  break if i.nil?
  oz << i
end
oz << n-1
if s[-1] == '0'
  zo << n-1
end
p (zo.size).times.map { |m|  (oz[m+k] || n-1)- zo[m] }.max
