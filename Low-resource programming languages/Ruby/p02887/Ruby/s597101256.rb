H = gets.to_i
S = gets.chomp

ret = 0

curr = ''
S.each_char do |c|
  if c != curr
    curr = c
    ret += 1
  end
end

p ret

