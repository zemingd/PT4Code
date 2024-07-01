n,k=gets.split.map(&:to_i)
s = gets
i=0
zo=[]
zo << -1 if s[0] == '1'

loop do
  i=s.index('01',i+1)
  break if i.nil?
  zo << i
end

i=0
oz=[]
loop do
  i=s.index('10',i+1)
  break if i.nil?
  oz << i
end
if s[-1] == '0'
  zo << n
else
  oz << n
end

p (zo.size-k).times.map { |m|  oz[m+k-1]- zo[m]  }.max
