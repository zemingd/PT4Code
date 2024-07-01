n, k, q = gets.to_s.split.map(&:to_i)
a = []
q.times do
  a << gets.to_i
end

if k > q
  n.times do
    puts "Yes"
  end
elsif
  n.times.with_index do |i|
    if a.count(i+1) > q - k
      puts "Yes"
    else
      puts "No"
    end
  end
end