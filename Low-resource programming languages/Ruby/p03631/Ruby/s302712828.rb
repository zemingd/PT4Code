N = gets.chomp.chars
is_ok = N == N.reverse
puts(is_ok ? 'Yes' : 'No')
