a, b, c, d = gets.chomp.split('').map(&:to_i)

[:+,:-].repeated_permutation(3).each do |op1, op2, op3|
  if a.public_send(op1, b).public_send(op2, c).public_send(op3, d) == 7
    puts "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}=7"
    exit
  end
end