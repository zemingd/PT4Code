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
  bit_str = sprintf("%0#{n}d", i.to_s(2))
  bit = bit_str.split('').reverse
  (0...bit.count).each do |j|
    map[j] = true if bit[j] == '1'
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
  max = [max, bit_str.count('1')].max if ok
end
puts max
