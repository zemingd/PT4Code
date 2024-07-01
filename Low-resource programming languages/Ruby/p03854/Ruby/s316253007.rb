S = STDIN.gets.chomp

while true
  if S[-5..-1] == "dream" || S[-5..-1] == "erase"
    S.slice!(-5..-1)
  elsif S[-7..-1] == "dreamer"
    S.slice!(-7..-1)
  elsif S[-6..-1] == "eraser"
    S.slice!(-6..-1)
  else
    puts "NO"
    break
  end

  if S == ""
    puts "YES"
    break
  end
end