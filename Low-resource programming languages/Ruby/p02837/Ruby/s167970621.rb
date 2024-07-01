n = gets.to_i
arr = Array.new(n)
n.times do |k|
  m = gets.to_i
  arr[k] = [] if arr[k].nil?
  m.times do
    i = gets.chomp.split(' ').map(&:to_i)
    arr[k] << [i[0] - 1, i[1]]
  end
end
max = 0
(0...(1 << n)).each do |i|
  ok = true
  map = Hash.new(false)
  (0..i).each do |j|
    map[j] = true if 1 & (i >> j) == 1
  end
  map.each do |k, _|
    arr[k].each do |l|
      if l[1] == 1
        ok = ok && map[l[0]]
      else
        ok = ok && !map[l[0]]
      end
    end
  end
  max = [max, i.to_s(2).count('1')].max if ok
end
puts max