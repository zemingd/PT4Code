n = gets.to_i
string = gets
arr = []
mod = n % 26
string.each_char do |st|
  val = st.ord + mod
  if val > 90
    arr.push(('A'.ord + val - 90 - 1).chr)
  else
    arr.push((st.ord + mod).chr)
  end
end

puts arr.join('')