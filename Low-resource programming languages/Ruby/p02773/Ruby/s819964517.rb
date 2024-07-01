N=gets.to_i
s=[[0,gets.chomp.to_s]]
(N-1).times.map do
  t=gets.chomp.to_s
  if s.map(&:last).include?(t) 
    s[s.map(&:last).index(t)][0]+=1
  else
    s<<[0,t]
  end
end
t=s.sort_by{|x| [-x[0], x[1]]}
t.each do |i|
  break if i[0]<t[0][0]
  puts i[1]
end