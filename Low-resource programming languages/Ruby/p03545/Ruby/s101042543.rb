n = gets.chop
a = []
n.each_char do |c|
  a << c.to_i
end

pm = [:+, :-]

pm.repeated_permutation(3) {|op1, op2, op3|
  result = a[0].send(op1, a[1]).send(op2, a[2]).send(op3, a[3])
  if result == 7
    puts "#{a[0]}#{op1.to_s}#{a[1]}#{op2.to_s}#{a[2]}#{op3.to_s}#{a[3]}=7"
    exit
  end
}
