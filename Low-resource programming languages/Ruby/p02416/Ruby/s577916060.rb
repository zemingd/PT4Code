$stdin = DATA if $stdin.eof?

ARGF.each_line do |line|
  break if line =~ /^0$/
  n = line.each_char.map(&:to_i).inject(&:+)
  puts n
end

__END__
123
1000
0