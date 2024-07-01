def nabe(num)
  if num % 3 == 0
    print ' '
    print num
  elsif num.to_s =~ /3/
    print ' '
    print num
  end
end

n = gets.to_i
1.upto(n) do |i|
  nabe(i)
end