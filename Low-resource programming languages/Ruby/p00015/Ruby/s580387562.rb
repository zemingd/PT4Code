$<.readlines.drop(1).map(&:to_i).each_slice(2) do |a, b|
  st = (a + b).to_s
  puts ((st.length <= 80) ? st : "overflow")
end
