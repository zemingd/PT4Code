n = gets.to_i
a,b,c = (0..2).map{gets.split.map(&:to_i)}
s = b.inject(:+)

before_num = 0
a.each do |num|
  if num == before_num + 1
    s = s + c[num - 2]
  end
  before_num = num
end

p s