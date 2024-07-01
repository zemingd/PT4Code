obj = {}
("a".."z").each do |s|
  obj[s] = 0
end

while (ln = gets) do
  ln.downcase.gsub(/[^a-z]/, '').chars do |key|
    obj[key] += 1
  end
end

obj.each do |key, val|
  puts "#{key}:#{val}"
end