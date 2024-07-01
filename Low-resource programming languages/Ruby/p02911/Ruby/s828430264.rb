N, K, Q = gets.strip.split(" ").map(&:to_i)
corrects = Array.new(N) { 0 }

Q.times do 
  corrects[gets.to_i - 1] += 1
end

corrects.each do |c|
  puts (
    if K - (Q - c) > 0
      "Yes"
    else
      "No"
    end
  )
end
