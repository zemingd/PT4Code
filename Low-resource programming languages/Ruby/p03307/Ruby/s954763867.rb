n=STDIN.gets.to_i
a = n % 2
while a != 0 do
  n+=n;
  a = n % 2
end
puts n