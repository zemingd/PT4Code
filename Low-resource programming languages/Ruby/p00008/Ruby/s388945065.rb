while n = gets
  n = n.to_i
  count = {}
  10.times do |a|
    10.times do |b|
      10.times do |c|
        10.times do |d|
          if a + b + c + d == n
            #puts "#{a}, #{b}, #{c}, #{d}"
            count[[a,b,c,d].sort.join] = true
          end
        end
      end
    end
  end
  puts count.length
end