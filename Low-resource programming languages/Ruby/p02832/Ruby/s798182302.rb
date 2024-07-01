n = gets.to_i
as = gets.split.map(&:to_i)
ns = 1..200000
num=1

as.map do |a|
  if a == num
    num += 1
  end
end
puts num==1 ? -1 : (n - num+1)
