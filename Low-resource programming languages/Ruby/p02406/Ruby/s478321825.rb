n = gets.to_i

(1..n).each do |i|
  x = i

  if (x % 3).zero?
    print " #{i}"
  elsif x % 10 == 3
    print " #{i}"
  else
    x /= 10
    until x.zero?
      if x % 10 == 3
        print " #{i}"
        break
      end
      x /= 10
    end
  end
end

puts

