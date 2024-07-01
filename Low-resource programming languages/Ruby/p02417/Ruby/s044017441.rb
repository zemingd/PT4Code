x = gets()
alf = []
num = []
i = 0
until x.nil?
y = x.downcase
if i == 0
 ('a'..'z').each do |str|
  alf << str
  num << y.count(str)
 end
else
 k = 0
 ('a'..'z').each do |str|
  num[k] += y.count(str)
  k += 1
 end
end
x = gets()
i += 1
end

i = 0

while i < 26
 puts "#{alf[i]} : #{num[i]}"
 i += 1
end
