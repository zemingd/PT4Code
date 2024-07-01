a = gets.chomp.chars
 
%w(+ -).repeated_permutation(3){|op|
  s = a.zip(op).join
  if eval(s) == 7
    puts s + "=7"
    exit
  end
}