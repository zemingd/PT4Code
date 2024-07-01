s = gets.chomp.chars
st = []
s.each do |c|
  if c != "B"
    st << c
  elsif c == "B" && !st.empty?
    st.pop    
  end
end
puts st.join("")