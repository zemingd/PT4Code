ary = gets.split(" ").map(&:to_i)

i = 0

ary.each do |n|
  i += 1
  if n == 0
    puts i
    exit
  end
end