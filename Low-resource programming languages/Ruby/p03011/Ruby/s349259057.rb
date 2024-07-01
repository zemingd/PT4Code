arr = gets.chomp.split(' ').map(&:to_i).combination(2).to_a
arr.map! {|ar| ar.reduce(:+)}
print(arr.min)