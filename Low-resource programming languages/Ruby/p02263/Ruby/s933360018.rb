input = gets.split
st = Array.new
l = input.length
for i in 0...l
  case input[i]
  when "+"
    b = st.pop
    a = st.pop
    st.push(a+b)
  when "-"
    b = st.pop
    a = st.pop
    st.push(a-b)
  when "*"
    b = st.pop
    a = st.pop
    st.push(a*b)
  else
    st.push(input[i].to_i)
  end
end
puts st[0]