n = gets
as = gets.split.map(&:to_i)
classes = {gray: 0, brown: 0, green: 0, aqua: 0, blue: 0, yellow: 0, orange: 0, red: 0}
gorilla = 0
as.each do |a|
  if 400 > a
    classes[:gray] += 1
  elsif 800 > a
    classes[:brown] += 1
  elsif 1200 > a
    classes[:green] += 1
  elsif 1600 > a
    classes[:aqua] += 1
  elsif 2000 > a
    classes[:blue] += 1
  elsif 2400 > a
    classes[:yellow] += 1
  elsif 2800 > a
    classes[:orange] += 1
  elsif 3200 > a
    classes[:red] += 1
  else
    gorilla += 1
  end
end

count = 0
classes.each do |key, value|
  if value > 0
    count += 1
  end
end

max = count + gorilla
count = 1 if gorilla > 0 && count == 0 # ゴリラしかいない場合の最小色数は0ではなく1

puts "#{count} #{max}"
