a = []
3.times do
  a.push(gets.chomp.split)
end
N = gets.to_i
d = "d"
N.times do
  b = gets.chomp
  3.times do |i|
    3.times do |j|
      a[i][j] = d if a[i][j] == b
    end
  end
end
r = "No"
3.times do |i|
  if a[i][0]==d && a[i][1]==d && a[i][2]==d or a[0][i]==d && a[1][i]==d && a[2][i]==d
    r = "Yes"
  end
end
if a[1][1]==d
  if a[0][0]==d && a[2][2] or a[0][2] && a[2][0]
    r ="Yes"
  end
end
puts r