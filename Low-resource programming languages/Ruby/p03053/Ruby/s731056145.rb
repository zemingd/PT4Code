h, w = gets.split.map(&:to_i)
a = []
h.times { a << gets.chomp.split('') }
ans = 0

while true
  hoge = Marshal.load(Marshal.dump(a))
  hoge.each_with_index do |e, i|
    e.each_with_index do |g, j|
      if g == '#'
        a[i-1][j] = '#' if i != 0 && a[i-1][j] == '.'
        a[i][j-1] = '#' if j != 0 && a[i][j-1] == '.'
        a[i][j+1] = '#' if j != w-1 && a[i][j+1] == '.'
        a[i+1][j] = '#' if i != h-1 && a[i+1][j] == '.'
      end
    end
  end
  ans += 1
  break unless a.flatten.include?('.')
end