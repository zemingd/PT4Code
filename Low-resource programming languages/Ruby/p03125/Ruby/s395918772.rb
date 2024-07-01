a=gets.chomp.split.map(&:to_i)
puts a[1]%a[0]==0? a[0]+a[1]:a[1]-a[0]