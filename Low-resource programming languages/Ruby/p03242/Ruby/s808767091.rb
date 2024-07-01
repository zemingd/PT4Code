a, b, c = readline.split("").map(&:to_i)
[a, b, c].each do |i|
  if i == 1 
    i = 9 
  elsif i == 9 
    i = 1
  end
  print i
end