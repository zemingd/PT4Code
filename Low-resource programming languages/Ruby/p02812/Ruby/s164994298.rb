n = gets.to_i
string = gets.chomp.split("")
cnt = 0

string.each_with_index do |s,idx|
  if s == "A"
    if string.slice(idx,3).join("") == "ABC"
      cnt += 1;
    end
  end
end

puts cnt