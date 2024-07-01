h, w = gets.split(' ').map(&:to_i)
a = []
(0..h - 1).each { |i| a << gets.chomp.split('') }
count = 0
check = true
while check == true
  b = Marshal.load(Marshal.dump(a))
  check = false
  (0..w - 1).each do |i|
    (0..h - 1).each do |j|
      if b[i][j] == '#'
        a[i - 1][j] = '#' if i - 1 >= 0
        a[i + 1][j] = '#' if i + 1 <= w - 1
        a[i][j - 1] = '#' if j - 1 >= 0
        a[i][j + 1] = '#' if j + 1 <= h - 1
        check = true
      end
    end
  end
  count += 1 if check == true
  check = false unless a.flatten.include?('.')
end
puts count
