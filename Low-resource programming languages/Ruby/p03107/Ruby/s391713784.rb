s = gets.chomp.split('').map(&:to_i)
i = 0
c = 0
flag = 0

while true do
  flag = 0

  while i < s.length - 1 do
    if s.slice(i, 2).sort == [0, 1]
      s.delete_at(i)
      s.delete_at(i)
      c += 1
      i += 1
      flag = 1
    else
      i += 1
    end
  end
  
  break if flag == 0
end

puts c * 4