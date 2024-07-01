N = gets.to_i
P = gets.split.map(&:to_i)

target = P.sort

if target == P
  puts 'YES'
  exit
end

N.times do |i|
  (i + 1).upto(N - 1) do |j|
    P[i], P[j] = P[j], P[i]

    if P == target
      puts 'YES'
      exit
    end

    P[i], P[j] = P[j], P[i]
  end
end

puts 'NO'
