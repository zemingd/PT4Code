n, k, q = gets.chomp.split(" ").map(&:to_i)
person = Array.new(n, k-q)
q.times do
    num = gets.chomp.to_i
    person[num-1] += 1
end

person.each do |p|
    if p <= 0
        puts "No"
    else
        puts "Yes"
    end
end
