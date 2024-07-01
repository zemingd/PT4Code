e = false;
while (s = gets) && e == false do
  if s == "0 0" then
    e = true;
  end
  puts gets.split(" ").map {|s| s.to_i}.sort.join(" ");
end