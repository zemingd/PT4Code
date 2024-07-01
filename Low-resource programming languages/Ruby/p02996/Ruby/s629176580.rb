n = gets.to_i
works = []
n.times do
  works << gets.split(" ").map(&:to_i)
end

neccesary = 0
works.each do |work|
  neccesary += work[0]
  work << work[1] - work[0]
end

works.sort! {|a,b| a[0] <=> b[0]}
works.reverse!

time_past = 0
count = 0

until works.empty?
  works.each_with_index do |work, index|
    if (neccesary - work[2] - work[0] - time_past) <= 0
      time_past += work[0]
      works.delete_at(index)
      break
    else
      count += 1
      if count > 200000
        puts "No"
        exit
      end
      next
    end
  end
end

puts "Yes"