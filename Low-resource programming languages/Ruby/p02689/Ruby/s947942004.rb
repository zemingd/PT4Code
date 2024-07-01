n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
a = []
m.times do 
  a << gets.split.map(&:to_i)
end
cou = 0
h.each.with_index(1) do |i, d|
  c = true
  a.each do |k|
    if k.include?(d)
      c=false unless k.all? {|b| h[b-1] <= i} && h.count(i)==1
    end
  end
  cou+=1 if c
end
puts cou

