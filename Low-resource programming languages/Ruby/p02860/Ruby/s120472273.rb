n = gets.to_i
st = gets.chomp.split("")

half = n / 2
i = 0
i2= half

if st.size % 2 != 0
  puts "No"
  exit
end

if st.size <= 1
  puts "No"
  exit
end

half.times do
  if st [i] != st[i2]
    puts "No"
    exit
  end
  i += 1
  i2 += 1
end

puts "Yes"
