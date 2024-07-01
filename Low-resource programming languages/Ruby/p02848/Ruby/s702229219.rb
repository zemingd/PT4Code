N = gets.to_i
S = gets.chomp

ret = ''
S.each_char do |ch|
  N.times do |i|
    if ch == 'Z'
      ch = 'A'
    else
      ch.next!
    end
  end
  ret += ch
end

puts ret