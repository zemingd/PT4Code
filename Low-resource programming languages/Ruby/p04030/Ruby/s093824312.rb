s = gets.split("")
arr = []
s.each do |v|
  if v == "B"
    arr.delete_at(-1)
  else
    arr << v
  end
  p arr
end

puts arr.join