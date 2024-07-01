st = gets.chomp.split("")
value = 700

st.each do |i|
  if i == "o"
    value += 100
  end
end


puts value
