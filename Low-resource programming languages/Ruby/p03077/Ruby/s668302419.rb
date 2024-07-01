all_members = STDIN.gets.to_i
min_v = 10 ** 15 + 1

5.times do |_|
  v = STDIN.gets.to_i
  min_v = v if v < min_v
end

STDOUT.puts (all_members / min_v).ceil + 1
  