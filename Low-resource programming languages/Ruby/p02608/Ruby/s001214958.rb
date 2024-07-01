N = gets.to_i

1.upto N do |i|
  ans = 0
  if i < 6
    puts 0
  else
    1.upto 100 do |x|
      1.upto 100.floor do |y|
        1.upto 100.floor do |z|
          pol = x*x + y*y + z*z + x*y + y*z + z*x
          next if pol < i
          if pol == i
            # puts "#{x},#{y},#{z}"
            ans += 1
          end
        end
      end
    end
    puts "#{ans}"
  end
end


