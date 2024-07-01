h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp.chars }
cnt = 0
loop do
  list = []
  h.times do |i|
    w.times do |j|
      next if a[i][j] == '#'

      cond = i - 1 >= 0 && a[i - 1][j] == '#'
      cond ||= i + 1 < h && a[i + 1][j] == '#'
      cond ||= j - 1 >= 0 && a[i][j - 1] == '#'
      cond ||= j + 1 < w && a[i][j + 1] == '#'

      list << [i, j] if cond
    end
  end
  break if list.empty?

  cnt += 1
  list.each { |i, j| a[i][j] = '#' }
end
puts cnt
