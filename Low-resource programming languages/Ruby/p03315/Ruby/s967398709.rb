res=0
gets.chomp.chars{|x| eval "res#{x}=1"}
puts res