N = gets.to_i
X = gets.chomp
time_hash = {}

N.times do |i|
  x = X.dup
  x[i] = (1 - x[i].to_i).to_s
  if x.to_i(2) == 0
    puts 0
    next
  end

  arr = []
  time = nil
  N.times do
    num = x.to_i(2)
	count = x.chars.count("1")
    arr << num

    surp = count == 0 ? 0 : num % count
    time = time_hash[num]
    if surp == 0 || !time.nil?
      time ||= 1
      arr.reverse_each do |n|
        time_hash[n] = time
        time += 1
      end
      puts time - 1
      break
    end
    
    num = surp
    x = num.to_s(2)
  end
end
