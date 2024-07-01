s = gets.chomp
k = gets.to_i

if s[0...k].split("").all?{|c| c=="1"}
  puts s[0]
else
  s.chars do |c|
    if c!="1"
      puts c
      break
    end
  end
end