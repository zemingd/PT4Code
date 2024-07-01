a,b,c,d = gets.chomp.split('')
ops = %w[+ -].product( %w[+ -]).product(%w[+ -]).map { |e| e.flatten }
ops.each do |op|
  eq = (a + op[0] + b + op[1] + c + op[2] + d)
  if eval(eq) == 7
    puts "#{eq}=7"
    exit
  end
end
