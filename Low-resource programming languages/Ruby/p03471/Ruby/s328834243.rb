N, Y= gets.split(" ").map(&:to_i)

(0..N).each do |mi|
  (0..N-mi).each do |gi|
    si = N - mi - gi
    if Y == 10000*mi + 5000*gi + 1000*si
      puts "#{mi} #{gi} #{si}"
      exit
    end
  end
end

puts "-1 -1 -1"
