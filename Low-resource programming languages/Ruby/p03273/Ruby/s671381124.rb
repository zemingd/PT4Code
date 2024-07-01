input = gets.chomp.split(' ').map{ |v| v.to_i }
h = input[0]
w = input[1]

mass = []
v_check = []
for i in 1..w
  v_check.push(true)
end

for i in 1..h
  line = gets.chomp
  line_s = line.split('')
  mass.push(line_s) if line.count('.') != w
  
  for i in 0...line_s.size
    v_check[i] = false if line_s[i] != '.'
  end
end

#p mass

for i in 0...mass.size
  for j in 0...mass[i].size
    print mass[i][j] if !v_check[j]
  end
  puts ''
end
