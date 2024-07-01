s = gets.chomp.split("").sort
t = gets.chomp.split("").sort

hash_s = {}
hash_t = {}

s.uniq.each do |c|
  hash_s[c] = s.count(c)
end
t.uniq.each do |c|
  unless hash_s[c].nil?
    if hash_s[c] != t.count(c)
      puts "No"
      exit
    end
  end
end

puts "Yes"