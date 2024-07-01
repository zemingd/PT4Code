arr = gets.chomp.split(' ').map(&:to_i)
ene = gets.chomp.split(' ').map(&:to_i)
if arr[0] <= arr[1]
  print 0
else
  i = 0
  while i < arr[1]
  # arr[1].times do
    ene.delete_at(ene.index(ene.max))
  # end
    i += 1
  end
  print ene.sum
end