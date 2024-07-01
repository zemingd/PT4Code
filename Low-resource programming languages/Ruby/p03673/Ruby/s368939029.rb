def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i).reverse
  b = Array.new(n)
  for i in 0..n-1
    if i.modulo(2) == 0
      b[i/2] = x[i]
    else
      b[n - 1 - (i/2)] = x[i]
    end
  end
  puts b.join(' ')
end

main()