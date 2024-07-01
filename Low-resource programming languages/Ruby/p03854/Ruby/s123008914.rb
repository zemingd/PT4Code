s = STDIN.gets.strip;
i = s.length;

dream = "dream"
dreamer = "dreamer"
erase = "erase"
eraser = "eraser"

while i > 0
  if i < 5
    puts "NO"
    exit
  end

  slice = s[i-5...i]
  if slice == dream || slice == erase
    i = i - 5
    next
  end

  slice = s[i-6..i]
  if slice == eraser
    i = i - 6
    next;
  end

  slice = s[i-7..i];
  if slice == dreamer
    i = i - 7
    next;
  end

  puts "NO"
  exit
end

puts "YES"