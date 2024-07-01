s = gets.chomp
t = gets.chomp

index = t.split("").uniq.map {|c| s.index c}
if index.include? nil
  puts -1
  exit
end

search_fieald = s + s
length = search_fieald.length

cache = {}
search_fieald.split("").each_with_index do |s, i|
  cache.has_key?(s) ? cache[s].push(i) : cache[s] = [i]
end

p cache
unit = 0
current_pos = 0

t.split("").each do |tp|
  find_pos = cache[tp].bsearch {|x| x >= current_pos }
  if find_pos.nil?
    unit += 1
    current_pos = 0
  else
    current_pos = find_pos + 1
  end
end

puts "#{unit * length + current_pos}"
