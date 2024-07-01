n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)


st = a[0]
(n-1).times do |i|
    st = st.gcd(a[i+1])
end
puts st