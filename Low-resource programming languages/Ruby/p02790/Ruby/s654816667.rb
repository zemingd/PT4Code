# set
a,b = gets.chomp.split(" ").map(&:to_i)
answer = 0

# main
if a == b then
  a.times do
    answer = answer * 10 + a
  end
elsif a < b then
  b.times do
    answer = answer * 10 + a
  end
else
  a.times do
    answer = answer * 10 + b
  end
end

print ("#{answer}\n")