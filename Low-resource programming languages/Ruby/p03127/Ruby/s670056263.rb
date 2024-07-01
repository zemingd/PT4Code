N = gets.to_i
as = gets.split.map(&:to_i).uniq

if as.count == 1
  puts as.first
elsif as.count == 2
  as.sort!
  if as [1] % as[0] == 0
    puts as[0]
  else
    puts 1
  end
else
  all_even = true
  as.each do |a|
    if a.odd?
      all_even = false
      break
    end
  end
  if all_even
    puts 2
  else
    puts 1
  end
end

