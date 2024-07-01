n, a, b = gets.chomp.split().map(&:to_i)

if (b - a).even?
  puts (b-a)/2
else
  ans1 = b-1
  ans2 = n-a
  ans3 = (a-1) + 1+ ((b-(a-1)-1)-1)/2
  ans4 = (n-b) + 1+ (n-(a+(n-b)+1))/2

  #p [ans1, ans2, ans3, ans4]
  puts [ans1, ans2, ans3, ans4].min
end