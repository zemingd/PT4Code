a,b=gets.split.map &:to_i
s=gets.chomp
puts (0..a+b).all?{|i|(i==a&&s[i]=='-')||(i!=a&&('0'..'9').include?(s[i]))}?:Yes: :No