s = gets.chomp.split('').map(&:to_i)
i = 0
c = 0

while i < s.length - 1 do
  if s.slice(i, 2).sort == [0, 1]
    s.delete_at(i)
    s.delete_at(i)
    i = 0
    c += 1
  else
    i += 1
  end
end

puts c * 2