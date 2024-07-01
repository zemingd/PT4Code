a,b,c,d = gets.chomp.split('').map(&:to_i)

['+','-'].product(['+','-'],['+','-']).each do |item|
  str = "#{a.to_s}#{item[0]}#{b.to_s}#{item[1]}#{c.to_s}#{item[2]}#{d.to_s}"
  if eval(str) == 7
    puts str+'=7'
    break
  end
end