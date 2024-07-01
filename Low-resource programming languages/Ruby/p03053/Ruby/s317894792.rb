h, w = gets.split.map(&:to_i)
a = []
h.times { a << gets.chomp.split('') }
ans = 0
done = []
while true
  b = a.flatten.map.with_index{|e,i| e == '#' ? i : nil }.compact
  break if b.size == h*w

  (b - done.flatten).each do |d|
    i = d/w
    j = d - i*h
    a[i-1][j] = '#' unless i == 0
    a[i][j-1] = '#' unless j == 0
    a[i][j+1] = '#' unless j == w-1
    a[i+1][j] = '#' unless i == h-1
  end
  done << b
  ans += 1
end

puts ans