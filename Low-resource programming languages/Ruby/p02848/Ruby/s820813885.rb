n = gets.to_i
s = gets.split(//)

def alp_index(s,n)
    i = n % 26
    alp = "0 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z".split.map(&:to_s)
    total = (i + alp.find_index(s).to_i) % 26
    alp[total]
end

tmp = []
s.each do |s|
    tmp.push(alp_index(s,n).chomp)
end

puts tmp.join
