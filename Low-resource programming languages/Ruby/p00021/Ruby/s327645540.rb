# this code has not tested.

n = gets.to_i
n.times do
  p = gets.split.map(&:to_f)
  flag = false
  ratio = (p[2]-p[0]) / (p[6]-p[4])
  if ratio == (p[3]-p[1]) / (p[7]-p[5])
    flag = true
  end
  if flag = true then puts "YES" else puts "NO" end
end