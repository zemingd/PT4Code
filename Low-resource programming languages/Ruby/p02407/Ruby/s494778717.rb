n = STDIN.gets.to_i
input = STDIN.gets.split(" ")
numbers = input.map(&:to_i)
numbers = numbers.reverse
for i in 0 .. numbers.length do
  if numbers.length == i
    print numbers[i].to_s + "\n"
  else
    print numbers[i].to_s + " "
  end
end