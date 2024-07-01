X = gets.to_i
l = [*2..(10**5)]
t = Math.sqrt(10**5)
(2..t).each{|i|
  l.reject! {|item| item % i == 0 && item != i}  
}
l.each{|i|
  if X < i
    puts i
    exit
  end
}