N=gets.to_i
a=gets.split.map &:to_i
h={}
a.each do |i|
  h[i].nil? ? h[i]=1 : h[i]+=1 
end
[*1..N].each do |i|
  if h[i].nil?
    puts 0
  else
    puts h[i]
  end
end
