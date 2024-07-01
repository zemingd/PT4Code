arr = gets.chomp.split(' ').map(&:to_i)
ene = gets.chomp.split(' ').map(&:to_i)
arr[1].times do
  ene.delete_at(ene.index(ene.max))
end
print ene.sum
# if arr[0] <= arr[1]
#   print 0
# else
#   arr[1].times do
#     ene.delete_at(ene.index(ene.max))
#   end
#   print ene.sum
# end
