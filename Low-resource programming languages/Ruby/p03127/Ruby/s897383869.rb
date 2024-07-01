N = gets.to_i
as = gets.split.map(&:to_i).uniq

if as.count == 1
  puts as.first
elsif as.count == 2
else
  as.sort!
  a = as[0]
  all_ab = true
  as.each do |aa|
    if aa % a != 0
      all_ab = false
      break
    end
  end
  if all_ab
    puts a
  else
    puts 1
  end
end

