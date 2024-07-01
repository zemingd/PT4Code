str = "";

while s = gets.chomp do
  str << s;
end

for c in 'a'..'z' do
  puts c + " : " + str.count(c).to_s;
end