n = gets.to_i
pair = []
n.times do
  a,b = gets.split.map(&:to_i)
  pair << [b,a]
end
pair.sort!

accum = 0
ans = 'Yes'
pair.each do |pa|
  b,a = pa
  accum += a
  p accum
  if b < accum
    ans = 'No'
    break
  end
end

puts ans
