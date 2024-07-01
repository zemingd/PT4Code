i = gets.to_i
ary = gets.chomp.split(" ")
 puts ["P","W","G","Y"].all?{|n| ary.include?(n)}? "Four" : "Three"