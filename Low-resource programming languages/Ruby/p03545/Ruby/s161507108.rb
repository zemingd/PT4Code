V = gets.chars.map(&:to_i)
[:+,:-].repeated_permutation(3).find do |op|
  if 3.times.inject(V[0]){|s,i| s.send(op[i],V[i+1]) } == 7
    puts "#{V[0]}#{op[0]}#{V[1]}#{op[1]}#{V[2]}#{op[2]}#{V[3]}=7"
    true
  end
end