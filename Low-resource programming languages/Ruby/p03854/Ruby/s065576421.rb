S = gets.chomp
T = ''
X = ['dreamer','dream','eraser','erase']

def can_be_equal(t)
  matched = false
  X.each do |x|
    tmp = ''
    tmp << t << x
    if tmp == S
      matched = true
      break
    elsif tmp.length <= S.length && tmp == S[0, tmp.length]
      matched = can_be_equal(tmp)
    end
  end
  matched
end


if can_be_equal(T)
  puts 'YES'
else
  puts 'NO'
end