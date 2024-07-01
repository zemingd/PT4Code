X, N = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)

if N == 0
  puts X
  exit
end

(N+1).times do |i|
    plus_now = X + i
    minus_now = X - i


    if !p.include?(minus_now)
       puts minus_now
       exit
    end

    if !p.include?(plus_now)
      puts plus_now
      exit
    end
end
