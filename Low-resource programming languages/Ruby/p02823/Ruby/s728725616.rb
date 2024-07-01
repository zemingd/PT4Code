n,a,b=gets.chomp.split(' ').map(&:to_i)

if n >= 2
  num = b - a
end

if num % 2 == 0
  puts num / 2
else
  if num == 1
    puts a
  else
    puts a + (num-1)/2
  end
end
