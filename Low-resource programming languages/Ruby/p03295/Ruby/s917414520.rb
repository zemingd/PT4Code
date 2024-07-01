n, m = gets.chomp.split(' ').map(&:to_i)
list = m.times.map { gets.chomp.split(' ').map(&:to_i) }

cut_result = 0
while !list.empty?
  x = Array.new(n + 1) { 0 }
  list.each do |a, b|
    a.upto(b - 1).each do |i|
      x[i] += 1
    end
  end
  cut = nil
  cut_count = -1
  x.each.with_index(0) do |y, i|
    if y > cut_count
      cut = i
      cut_count = y
    end
  end
  list = list.reject { |a, b| cut >= a && cut < b }
  cut_result += 1
end

puts cut_result
