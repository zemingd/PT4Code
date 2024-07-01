n, q = STDIN.gets.split(' ')
s = STDIN.gets

STDIN.each_line do |line|
  st, e = line.split(' ')
  base = s[st.to_i-1..e.to_i-1]

  puts base.scan('AC').count
end
