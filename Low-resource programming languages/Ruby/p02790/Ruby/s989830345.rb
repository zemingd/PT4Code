a, b = gets.split.map(&:to_i)
num = []

if a > b
  a.times do
    num.push(b)
  end
elsif a < b
  b.times do
    num.push(a)
  end
else
  a.times do
    num.push(a)
  end
end

puts num.join