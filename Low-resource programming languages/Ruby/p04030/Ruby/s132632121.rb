a = gets.chomp.split("")
b = Array.new()
a.length.times do |x|
  if a[x] == "0" then
    b.push 0
  elsif a[x] == "1" then
    b.push 1
  elsif a[x] == "B" then
    if b.length != 0
      b.delete_at(-1)
    end
  else
  end
end
puts b.join