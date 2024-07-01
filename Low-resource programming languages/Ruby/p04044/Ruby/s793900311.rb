while line = gets
  a,b =line.chomp.split(" ").map(&:to_i);
  array = []
  a.times do |i|
    array << gets.chomp
  end
  array.sort!
  ans = ""
  array.each do|elem|
    ans += elem
  end
  puts ans
end

