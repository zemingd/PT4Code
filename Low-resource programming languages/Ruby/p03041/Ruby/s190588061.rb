N, K = STDIN.gets.chomp.split(' ').map(&:to_i)
s = STDIN.gets.chomp

s.each_char.with_index{ |c, i|
  if i+1 == K then
    if c == 'A' then
      print 'a'
    elsif c == 'B'
      print 'b'
    else
      print 'c'
    end
  else
    print c
  end
}

puts
