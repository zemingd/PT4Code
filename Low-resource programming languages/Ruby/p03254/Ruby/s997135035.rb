children,candy = gets.chomp.split(" ").map(&:to_i)
wa = gets.chomp.split(" ").map(&:to_i)
want = wa.sort
count = 0
point = 0

for i in 0..children - 2
  if count + want[i] <= candy
    point += 1
    count += want[i]
  end
end

if count + want[children - 1] == candy
  point += 1
end


print point
