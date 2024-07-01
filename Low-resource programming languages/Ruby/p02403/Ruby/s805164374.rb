e = false;
while (s = gets) && !e do
  if s == "0 0" then
    e = true;
  else
    a = s.split(" ").map(&:to_i);
    a[0].times {
      puts "#" * a[1];
    }
    puts;
  end
end