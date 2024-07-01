n = gets.strip.to_i
s = gets.strip.split("")
s.push("@")

st = s[0]
merge = []
s.each do |c|
  # puts "#{st} : #{c}"
  if st != c
    # puts "pushd #{st}"
    merge.push(st)
    st = c
  end
end
puts merge.length

# 一番後ろに終了の目印の@を追加している