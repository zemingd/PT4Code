n, a, b = gets.chomp.split(" ").map(&:to_i)

if (a - b).abs % 2 == 0
  print "#{(a - b).abs / 2}\n"
else
  if [a, b].max - 1 > n - [a, b].min
    print "#{n - [a, b].min}\n"
  else
    print "#{[a, b].max - 1}\n"
  end
end