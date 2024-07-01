line = gets.split(' ').map(&:to_i)

for i in 1..5 do
  if line[i-1] == 0 then
    print i
    break
  end
end