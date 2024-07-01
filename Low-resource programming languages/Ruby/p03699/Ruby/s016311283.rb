io = STDIN
n=io.gets.chomp.to_i
s=[]
n.times do
  s<<io.gets.chomp.to_i
end
ss=s.sort.select{|i|i%10!=0}
if ss==[]
  puts 0
else
  sum=s.inject(:+)
  ss.each do |i|
    break if sum%10 != 0
    sum-=i
  end
  puts sum
end
