a = gets.chomp.to_i
n = gets.chomp.split(" ").map(&:to_i)
flag = 1
count = 0
while flag == 1 
  flag = 0
  (a-1).downto(1) do |j|
    if n[j] < n[j-1]
      n[j],n[j-1] = n[j-1],n[j]
      flag = 1
      count += 1
    end
  end
end
n[0,a-1].each do |d|
  print("#{d} ")
end
puts("#{n[a-1]}")
puts count