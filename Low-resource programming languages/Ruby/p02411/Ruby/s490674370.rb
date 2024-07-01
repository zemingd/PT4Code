while line = gets.chomp do
  if ( line == "-1 -1 -1" ) then
    exit
  end
  m, f, r = line.split(" ").map(&:to_i)
  mf = m + f
  if (m == -1 || f == -1 || mf < 30) then
    printf "F\n";
  elsif mf < 50 && r < 50 then
    printf "D\n";
  elsif mf < 65 then
    printf "C\n";
  elsif mf < 80 then
    printf "B\n";
  else
    printf "A\n";
  end
end