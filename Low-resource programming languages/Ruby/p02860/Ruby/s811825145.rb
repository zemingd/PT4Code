n = gets.to_i
m = n / 2
st = gets.chomp
puts (n % 2 == 0 and st.slice(0, m - 1) == st.slice(m) ? 'Yes' : 'No')
