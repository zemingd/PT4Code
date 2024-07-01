s = scanf("%s",'C');
pattern = '^(dream|dreamer|erase|eraser)*$';

if isempty(regexp(text, pattern, 'match'))
    disp("NO")
else
    disp("YES")
end

s = gets.chomp.reverse

dream = "dream".reverse
dreamer = "dreamer".reverse
erase = "erase".reverse
eraser = "eraser".reverse

while not s.empty? do
    
    k = s.size
    next if s.sub!(eraser,  "")
    next if s.sub!(erase,   "")
    next if s.sub!(dreamer, "")
    next if s.sub!(dream,   "")
    
    if k == s.size
        puts "WA!!!!!!!!!!!!!!!!!!!!!!!!! if NO"
        exit
    end
end

puts "YES"