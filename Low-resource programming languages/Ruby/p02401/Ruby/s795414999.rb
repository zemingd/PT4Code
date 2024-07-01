loop do
  exp = gets
  #puts "exp: #{exp}"
  exit if /\?/ =~ exp
  puts eval( exp )
end