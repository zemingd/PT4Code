n=gets.to_i
as=gets.split.map(&:to_i)

ret=0

as.each do |a|
  while a%2==0
    ret += 1
    a /= 2
  end
end

p ret