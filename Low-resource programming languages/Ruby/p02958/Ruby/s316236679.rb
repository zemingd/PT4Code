n = gets.to_i

p = gets.split.map(&:to_i)

if p == (1..n).to_a
  puts 'YES'
  exit
end

(0..(n - 1)).each do |i|
  (0..(n - 1)).each do |j|
    p_copy = p.clone
    p_copy[i], p_copy[j] = p_copy[j], p_copy[i]
    
    if p_copy == (1..n).to_a
      puts 'YES'
      exit
    end
  end
end

puts 'NO'