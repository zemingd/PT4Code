x = gets.to_i
st = gets.chomp.split("")
st2 = st.size
array = []
array2 = ('A'..'Z').to_a
array3 = ('A'..'Z').to_a
array << array2
array << array3
array.flatten!
i = 0

st2.times do
  posi =  array.index("#{st[i]}")
  ans_posi = posi + x
  print array[ans_posi]
  i += 1
end

puts ""

