str = "";

while s = gets do
  str << s.chomp;
end

for c in 'a'..'z' do
  puts c + " : " + str.count(c).to_s;
end