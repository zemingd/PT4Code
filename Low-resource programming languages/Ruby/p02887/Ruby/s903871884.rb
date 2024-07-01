N = gets.strip.to_i
S = gets.strip.split('')

ct = 1
p = S.shift
S.each do |c|
  unless p.eql?(c)
    ct += 1
    p = c
  end
end
puts ct
