h,n=gets.split.map(&:to_i)
arr=gets.split.map(&:to_i)
puts h<=arr.inject(:+) ? 'Yes':'No'