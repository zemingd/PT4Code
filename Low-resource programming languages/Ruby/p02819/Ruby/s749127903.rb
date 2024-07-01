X = gets.to_i
l = [*2..100003]
t = Math.sqrt(100003)
(2..t.ceil).each{|i|
  l.reject! {|item| item % i == 0 && item != i}  
}
l.each{|i|
  if X <= i
    puts i
    exit
  end
}