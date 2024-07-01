# coding: utf-8

hash = {}
('a'..'z').each do |i|
  hash.store(i, 0)
end

while input = gets
  input.downcase.split("").each do |i|
    hash[i] += 1 if hash.key?(i)
  end
end
('a'..'z').each do |i|
  puts "#{i} : #{hash[i]}"
end