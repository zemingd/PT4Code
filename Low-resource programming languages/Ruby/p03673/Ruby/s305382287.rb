def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i)
  b = []
  for i in 0..n-1
    b << x[i]
    b.reverse!
  end

  puts b.join(' ')
end

main()