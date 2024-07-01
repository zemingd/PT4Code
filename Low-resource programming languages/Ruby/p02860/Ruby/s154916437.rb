n = gets.to_i
st = gets
if n % 2 == 1
  puts 'No'
else
  m = n / 2
  if st.slice(0, m - 1) == st.slice(m, n)
 	 puts 'Yes'
  else
 	 puts 'No'
  end
end