while (line = gets.chomp) != "0" do
# loop {
#   line = gets.chomp
  break if line == 0
  sum = 0
  line.each_char {|st|
    sum += st.to_i
  }
  puts sum
end
  # }

