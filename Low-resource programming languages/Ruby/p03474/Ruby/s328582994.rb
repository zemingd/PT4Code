a,b=gets.split.map(&:to_i)
x=gets.chomp
if x.size==a+b+1 && x.chars.all?{|y| [*?0..?9,?-].include? y} && x[a+1]== ?- && x.count(?-)==1
  puts 'Yes'
else
  puts 'No'
end