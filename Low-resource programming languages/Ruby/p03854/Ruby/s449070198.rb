s = gets.chomp!

until s == "" do
    l = s.length - 1
    if s[l-4..l] == "dream" then
        s.slice!(l-4..l)
    elsif s[l-6..l] == "dreamer"
        s.slice!(l-6..l)
    elsif s[l-4..l] == "erase"
        s.slice!(l-4..l)
    elsif s[l-5..l] == "eraser"
        s.slice!(l-5..l)
    else
        puts "NO"
        exit
    end
end

puts "YES"