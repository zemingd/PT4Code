arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
a_count = Array.new(26)
s_count = 0
count = 0
26.times do |i|
  a_count[i] = 0
end
s = []
while true
  s[s_count] = gets.chomp.downcase.split("")
  break if s[s_count] == nil
  s_count += 1
end
s.flatten!
arr.each do |item|
  s.size.times do |i|
    if s[i] == item
      a_count[count] += 1
    end
  end
  puts "#{item} : #{a_count[count]}"
  count += 1
end