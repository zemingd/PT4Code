array = gets.chomp.split(' ')
N = array[0].to_i
L = array[1].to_i
p N, L
flavor_list = []
N.times do |i|
  flavor_list.push(L + i)
end
bite = if N > L
         - flavor_list.map(&:abs).min
       else
         flavor_list.map(&:abs).min
       end
print flavor_list.sum - bite
