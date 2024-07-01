n = gets.strip.to_i
array = []
n.times do
  array << gets.strip.to_s
end

unique = array.uniq

hash = {}
unique.each do |word|
  count = array.count { |a| a == word }
  hash.merge!("#{word}": count)
end