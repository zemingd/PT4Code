io = STDIN
n=io.gets.chomp.to_i
s=[]
n.times do
  s<<io.gets.chomp.to_i
end
if ss=s.sort.find{|i|i%10!=0}
  sum=s.inject(:+)
  if sum%10==0
    puts sum-ss
  else
    puts sum
  end
else
  puts 0
end
