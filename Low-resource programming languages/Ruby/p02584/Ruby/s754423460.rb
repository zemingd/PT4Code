x,k,d = gets.chomp.split(' ').map(&:to_i)
all = [[x]]
# p all[0]
# p all[0][0]
min = x
i = 0
while i < k
  a = []
  j = 0
  while j < all[i].size
    a << (all[i][j]+d) if (all[i][j]+d).abs < min
    a << (all[i][j]-d) if (all[i][j]-d).abs < min
    min = all[i][j]+d if (all[i][j]+d).abs < min
    min = all[i][j]-d if (all[i][j]-d).abs < min
    # a << (all[i][j]+d)
    # a << (all[i][j]-d)
    j += 1
  end
  all << a
  i += 1
end
p min
