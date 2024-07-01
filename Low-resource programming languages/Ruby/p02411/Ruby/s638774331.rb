ans =[]

while true
  args = gets.split(" ").map{|e|e.to_i}
  break if args[0] == -1 && args[1] == -1 && args[2] == -1
  if args[0] == -1 || args[1] == -1
    ans.push "F"
  elsif args[0] + args[1] >= 80
    ans.push "A"
  elsif args[0] + args[1] >= 65
    ans.push "B"
  elsif args[0] + args[1] >= 50
    ans.push "C"
  elsif args[0] + args[1] >=30
    if args[2] >=50
      ans.push "C"
    else
      ans.push "D"
    end
  elsif args[0] + args[1] < 30
    ans.push "F"
  end
end
ans.each {|e|
puts c
}