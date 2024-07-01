def ok
  B.times do |i|
    return true if (A*i)%B == C
  end
  false
end
A,B,C=gets.split.map &:to_i
puts ok ? :YES : :NO
