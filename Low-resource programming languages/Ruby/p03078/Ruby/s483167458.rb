x,y,z,k = gets.split(" ").map(&:to_i)

a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

ary = []

a.each do |l|
  b.each do |m|
    c.each do |n|
      num = l+m+n
      ary.push(num)
    end
  end
end

ary.sort!

k.times do
  x = ary.pop
  p x
end
