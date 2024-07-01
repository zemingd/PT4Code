n = $stdin.gets.chomp

flag = 0
if n[0] != n[1]
  if n[1] != n[2]
    if n[0] != n[2]
      flag = 1
    end
  end
end

if flag == 1
puts "Yes"
else
puts "No"
end