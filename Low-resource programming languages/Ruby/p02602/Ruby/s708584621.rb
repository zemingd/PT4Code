nk = gets.split(" ").map(&:to_i)
n = nk[0]
k = nk[1]
num = gets.split(" ").map(&:to_i)

for i in k..(n - 1)
  if (num[i - k] < num[i])
    puts "Yes"
  else
    puts "No"
  end
end
