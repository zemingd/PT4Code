loop do
  s = gets
  break if s =~ /\?/

  puts eval(s)
end

