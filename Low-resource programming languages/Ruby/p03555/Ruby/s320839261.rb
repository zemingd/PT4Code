while input.gets
  input.chomp!
  if input == input2.reverse
    puts "YES"
  else
    puts "NO"
  end
end