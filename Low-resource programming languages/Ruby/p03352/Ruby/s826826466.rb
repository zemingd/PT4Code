def inp() a=gets.chomp.split(" ").map(&:to_i)end
n = inp[0]
t = [1]
(2..1000).each do |b|
  (2..1000).each do |p|
    li = b**p
    break if(li > n)
    t.push(li)
  end
end
p t.max