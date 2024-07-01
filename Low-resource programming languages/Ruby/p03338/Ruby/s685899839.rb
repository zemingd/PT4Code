N = gets.chomp.to_i
S = gets.chomp

best = -1

N.times do |i|
    s1 = S[0...i]
    s2 = S[i..-1]

    best = [ best, (s1.chars.uniq & s2.chars.uniq).size ].max
end

puts best
