n = gets.to_i
res = nil
5000.times do |a|
  break unless res.nil?
  a -= 2500
  5000.times do |b|
    break unless res.nil?
    b -= 2500
    # puts "#{a**5} - #{b**5} = #{a**5 - b**5}(#{n})"
    res = [a, b] if a**5 - b**5 == n
  end
end

res = [0, 0] if res.nil?
puts res.join(' ')