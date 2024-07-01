abc=gets.split.map(&:to_i)
puts abc.count(5)==2 && abc.count(7)==1 ? "YES":"NO"
