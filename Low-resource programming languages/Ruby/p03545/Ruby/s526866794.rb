require 'pp'
a, b, c, d = gets.chomp.chars.map(&:to_i)
[:+, :-].repeated_permutation(3) do |op1,op2,op3|
  res = a.send(op1,b).send(op2,c).send(op3,d)
  if res == 7
    puts "#{a}#{op1.to_s}#{b}#{op2.to_s}#{c}#{op3.to_s}#{d}=7"
    exit
  end
end
