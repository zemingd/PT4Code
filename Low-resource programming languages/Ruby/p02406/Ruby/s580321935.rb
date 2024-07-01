def nabe(num)
  if num % 3 == 0
    print num
  elsif num.to_s =~ /3/
    print num
  end
end

n = gets.to_i
1.upto(n) do |i|
  print ' '
  nabe(i)
end