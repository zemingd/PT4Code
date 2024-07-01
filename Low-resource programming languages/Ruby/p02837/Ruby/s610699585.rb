n = gets.to_i
a = [0, 1]
array = a.repeated_permutation(n).to_a

shogens = []
for i in 1..n
  shogen_ctn = gets.to_i
  for j in 1..shogen_ctn
    shogens.push(gets.split(" ").map(&:to_i))
  end
end

ctn = []
for i in 0..array.length-1
 # p array[i]
  #p shogens
  j = 0
  while j <= n-1
    if array[i][j] == 0 && shogens[j][1] == 0
      shogens[j][1] = 1
    elsif array[i][j] == 0 && shogens[j][1] == 1
      shogens[j][1] = 0
    end
    j += 1
  end
  new_shogens = shogens.sort
  k = 1
  while k <= n 
    if new_shogens.uniq.group_by{|item| item[0] == k}[true] != nil && new_shogens.uniq.group_by{|item| item[0] == k}[false] != nil
      if new_shogens.uniq.group_by{|item| item[0] == k}[true].length == 1 && new_shogens.uniq.group_by{|item| item[0] == k}[false].length == 1
        ctn << new_shogens.uniq.group_by{|item| item[0] == k}[true][0][1] + new_shogens.uniq.group_by{|item| item[0] == k}[false][0][1]
      end
    end
    k += 1
  end
end

if ctn == []
  puts 0
else
  puts ctn.max
end