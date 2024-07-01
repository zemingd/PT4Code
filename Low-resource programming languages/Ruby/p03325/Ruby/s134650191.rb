a = gets.to_i
b = gets.chomp.split(" ").map(&:to_i)

def div2(x)
  if x % 2 != 0 then
    0
  else
    div2(x/2) + 1
  end
end

cnt = 0
b.each do |n|
  cnt += div2(n)
end

puts cnt