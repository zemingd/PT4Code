n, k = gets.chomp.split.map(&:to_i)
ki = 0
# k番目に小さい数...?
# ->ソートしたときの順番だと思われ
arr = {}
n.times do
  a, b = gets.chomp.split.map(&:to_i)
  if arr[a].nil?
    arr[a] = b
  else
    arr[a]+=b
  end
end
arr = arr.sort_by{|x|x[0]} # 頭湧いてるからarr[0]にしてた
arr.each do |a, v|
  if ki+v<k
    ki+=v
  else
    puts a
    exit  # 頭湧いてるからbreakにしてた
  end
end