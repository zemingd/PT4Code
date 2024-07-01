s = gets.chomp
n = gets.to_i

alp = "0 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z".split.map(&:to_s)
i = n % 26
total = (i + alp.find_index(s)) % 26
puts alp[total]