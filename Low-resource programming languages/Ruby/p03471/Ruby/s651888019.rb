n, amount = gets.split.map(&:to_i)

yen_10000 = 0
yen_5000 = 0
yen_1000 = 0

fin = false

k = (amount / 10000).ceil
fin = true if k > n
k.downto(0) do |m|
  if m * 10000 <= amount
    j = ((amount - m* 10000) / 5000).ceil
    fin = true if j > n-m
    j.downto(0) do |l|
      if (m * 10000 + l * 5000) <= amount
        (n-m-l).downto(0) do |t|
          if (m * 10000 + l * 5000 + t * 1000) == amount && m + l + t == n
            puts "#{m} #{l} #{t}"
            fin = true
            break
          end
        end
        break if fin
      end
    end
    break if fin
  end
end

puts '-1 -1 -1' unless fin