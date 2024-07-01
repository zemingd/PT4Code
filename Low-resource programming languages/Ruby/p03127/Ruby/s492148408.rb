N = gets.to_i
as = gets.split.map(&:to_i).uniq

if as.count == 1
  puts as.first
else
  as.sort!
  a = as[0]
  all_ab = true
  all_even = true
  all_five = true
  as.each do |aa|
    if aa % a != 0
      all_ab = false
    end
    if aa.odd?
      all_even = false
    end
    if aa % 5 != 0
      all_five = false
    end
  end
  if all_five
    puts as[1] - as[0]
  elsif all_ab
    puts a
  elsif all_even
    puts 2
  else
    puts 1
  end
end

