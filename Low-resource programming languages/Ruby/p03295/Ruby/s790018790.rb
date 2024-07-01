n, m = gets.chomp.split(' ').map(&:to_i)
list = m.times.map { gets.chomp.split(' ').map(&:to_i) << true }

bridges = Array.new(n + 1) { [] }
bridges.each.with_index(0) do |s, i|
  list.each.with_index(0) do |l, j|
    a, b, _ = l
    if i >= a && i < b
      s << j
    end
  end
end

cut_result = 0
loop do
  cut = nil
  cut_count = -1
  all_zero = true
  0.upto(n).each do |i|
    l = bridges[i]
    alive_count = l.count {|j| list[j][2] }
    next if alive_count == 0

    all_zero = false
    if alive_count > cut_count
      cut = i
      cut_count = alive_count
    end
  end
  break if all_zero

  bridges[cut].each do |i|
    list[i][2] = false
  end
  cut_result += 1
end

puts cut_result
