str = ""
tmp = ""

while (tmp = STDIN.gets) != nil
str += tmp.chomp
end

keys = ("a".."z").to_a
values = [0] * keys.length

alpha = Hash[keys.zip(values)]

str.each_char{|x|
c = x.downcase
if(alpha.include?(c))
alpha[c]+=1
end
}

keys.each{|key|
puts "#{key} : #{alpha[key]}"
}