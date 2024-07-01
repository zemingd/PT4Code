okDay = ARGV[0].to_i
buyDay = ARGV[1].to_i
eatDay = ARGV[2].to_i
overDay = eatDay - buyDay;

if overDay <= 0 then
  puts 'delicious'
  exit 0
end

if overDay <= okDay then
  puts 'safe'
  exit 0
end

puts 'dangerous'