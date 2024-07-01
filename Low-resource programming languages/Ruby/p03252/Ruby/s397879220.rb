s = gets.chomp.split("")
t = gets.chomp.split("")

hash = {}
s.size.times do |i|
  if hash[t[i]].nil?
    hash[t[i]] = s[i]
  else
    unless hash[t[i]] == s[i]
      puts "No"
      exit
    end
  end
end

puts "Yes"