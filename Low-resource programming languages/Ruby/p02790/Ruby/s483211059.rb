list = gets.split(' ').map(&:to_i)


if list[0] <= list[1] then
  for value in 1..list[1] do
    print list[0]
  end

else
  for value in 1..list[0] do
    print list[1]
  end
end