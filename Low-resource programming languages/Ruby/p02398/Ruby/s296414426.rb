a,b,c = gets.chomp.split.map(&:to_i)
i = 0
while a<=b do
  if c%a=0 then
    i = i + 1
  end
a = a + 1
end
puts i