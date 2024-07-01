s = gets.chomp.split("")
array = Array.new(3) {0}
for i in 0..2 do
  if s[i] == "a"
    array[0] += 1
  elsif s[i] == "b"
    array[1] += 1
  elsif s[i] == "c"
    array[2] += 1
  end
end

if array == [1,1,1]
  puts "Yes"
else
  puts "No"
end