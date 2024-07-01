n = gets.chomp.to_i
t_a = gets.chomp
a = t_a.split(' ').map{|v| v.to_i}

t_b = gets.chomp
b = t_b.split(' ').map{|v| v.to_i}

t_c = gets.chomp
c = t_c.split(' ').map{|v| v.to_i}

### a = [3, 1, 2]
### b = [2, 5, 4]
### c = [3, 6]

result = 0
prev = 99
a.each do |v|
  result += b[v-1]

  if prev+1 == v-1
    result += c[prev]
  end

  prev = v-1
end

p result