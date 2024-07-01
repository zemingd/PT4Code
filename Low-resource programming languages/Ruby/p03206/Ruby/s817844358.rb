d = gets().chomp.to_i

list = {
  25 => 'Christmas',
  24 => 'Christmas Eve',
  23 => 'Christmas Eve Eve',
  22 => 'Christmas Eve Eve Eve'
}

puts list[d]
