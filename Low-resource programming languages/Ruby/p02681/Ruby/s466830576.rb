st = gets.chomp.split("")
st2 = gets.chomp.split("")
i = 0
st3 = st.length

st3.times do
  if st[i] != st2[i]
    puts "No"
    exit
  end
end

if (st3 + 1) != st2.length
  puts "No"
  exit
end

puts "Yes"
