a = gets.chomp.chars
[?+, ?-].repeated_permutation(3).each do |b|
  s = a[0]+b[0]+a[1]+b[1]+a[2]+b[2]+a[3]
  if eval(s) == 7
    puts s+"=7"
    exit
  end
end