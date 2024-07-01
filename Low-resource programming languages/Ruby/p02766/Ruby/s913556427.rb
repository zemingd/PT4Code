number,disit=gets.chomp.split(" ").map(&:to_i);
count = 1
loop do
  if number <= disit**count-1
    print(count)
    break
  end
  count += 1
end