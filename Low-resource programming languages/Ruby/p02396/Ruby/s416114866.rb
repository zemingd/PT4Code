i = 1;
e = false;
while (s = gets) && e == false do
  n = s.to_i;
  if n == 0 then
    e = true;
  else
    puts "Case " + i.to_s + ": " + n.to_s;
    i += 1;
  end
end