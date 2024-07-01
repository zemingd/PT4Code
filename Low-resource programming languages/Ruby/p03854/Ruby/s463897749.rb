s = gets

list = [
  "dream",
  "dreamer",
  "erase",
  "eraser",
]

while s.length >0
  flag = true
  list.each do |w|
    if s[(s.length-w.length)..-1] == w
      s = s[-1..(s.length-w.length)]
    else
      flag = false
    end
  end
  if !flag
    puts "NO"
    exit
  end
end
puts "YES"