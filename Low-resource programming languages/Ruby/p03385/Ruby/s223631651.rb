input = $stdin.gets.chomp!

if input.length == 3
  if input =~ /a/
    if input =~ /b/
      if input =~ /c/
        puts "Yes"
        exit()
      end
    end
  end
end
puts "No"
