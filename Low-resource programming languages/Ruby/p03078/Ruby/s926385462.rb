x,y,z,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

as.sort!.reverse!
bs.sort!.reverse!
cs.sort!.reverse!

# hoge = [x,y,z]
# min = hoge.min
# if min > 100
#   as = as.first(100)
#   bs = bs.first(100)
#   cs = cs.first(100)
# else
# end
# if x + y + z
# end
# x
# y
# z
# k

as = as.first([x, k - (y * z)].min)
bs = bs.first([y, k - (x * z)].min)
cs = cs.first([z, k - (x * y)].min)

candidates = []

as.each do |a|
  bs.each do |b|
    cs.each do |c|
      candidates << a + b + c
    end
  end
end

candidates.sort!.reverse!

k.times do |i|
  puts candidates[i]
end
