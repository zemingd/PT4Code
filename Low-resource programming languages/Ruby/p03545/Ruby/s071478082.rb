ns = gets.chomp.split(//).map(&:to_i)

ops = ['+', '-']
ops.repeated_permutation(3).to_a.each do |_ops|
  s = ns.zip(_ops).to_a.flatten.join
  if eval(s) == 7
    puts(s + '=7')
    break
  end
end