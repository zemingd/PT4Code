h, w = gets.split.map(&:to_i)
a = []
h.times { a << gets.chomp.split('') }
ans = 0

while true
  b = a.flatten.map.with_index { |e,i| e == '#' ? i : nil }.compact
  b.each do |d|
    i = d/w
    j = d - i*h
    a[i-1][j] = '#' unless i == 0
    a[i][j-1] = '#' unless j == 0
    a[i][j+1] = '#' unless j == w-1
    a[i+1][j] = '#' unless i == h-1
  end
  ans += 1
  break unless a.flatten.include?('.')
end

puts ans