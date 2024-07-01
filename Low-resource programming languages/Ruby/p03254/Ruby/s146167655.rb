n , x = gets.split.map &:to_i
as = gets.split.map &:to_i
as = as.sort

cnt = 0
as.each do |y|
  if y <= x
    x -= y
    cnt += 1
  end
end

p cnt