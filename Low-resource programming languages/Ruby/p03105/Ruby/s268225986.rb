def read_i
  gets.chomp.split(' ').map(&:to_i)
end

a, b, c = read_i

puts [b/a, c].min

__END__
2 11 4
