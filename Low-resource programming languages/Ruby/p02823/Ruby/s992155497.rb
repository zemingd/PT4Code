_n,a,b=gets.chomp.split(' ').map(&:to_i)

num = b - a

if num % 2 == 0
  puts num / 2
else
  if num == 1
    puts a
  else
    puts a + (b-a-1)/2
  end
end
