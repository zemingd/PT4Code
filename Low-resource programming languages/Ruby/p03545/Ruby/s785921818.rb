a = gets.chomp.split('')


['-', '+'].repeated_permutation(3) do |op|
  exp = []
  op.each_with_index do |b, i|
    exp << a[i]
    exp << b
  end
  exp << a[3]
  if eval(exp.join).to_i == 7
    puts "#{exp.join}=7"
    exit(0)
  end
end

