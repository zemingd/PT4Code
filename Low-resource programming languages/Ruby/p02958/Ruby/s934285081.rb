n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
count = 0
arr.each.with_index do |num,id|
  if num != id+1
    count += 1
  end
end
if count > 2
  puts "NO"
else
  puts "YES"
end