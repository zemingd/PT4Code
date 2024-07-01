h,a = gets.split.map(&:to_i)
count = 1
begin
  count += count
  h = h-a
end while h < 0
puts count