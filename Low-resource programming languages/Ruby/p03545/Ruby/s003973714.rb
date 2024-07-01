A,B,C,D = gets.chomp.split("").map(&:to_i)
s = ["+","-"]
s.product(s).product(s).each{ |a|
  x = sprintf("#{A}%s#{B}%s#{C}%s#{D}", *a.flatten)
  if eval(x) == 7
    puts "#{x}=7"; exit
  end
}