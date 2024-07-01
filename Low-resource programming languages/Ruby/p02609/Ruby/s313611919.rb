N = gets.to_i
X = gets.chomp
arr = {}

N.times do |i|
  x = X.dup
  x[i] = (1 - x[i].to_i).to_s

  time = 0
  N.times do
    time += 1

    num = x.to_i(2)
	count = arr[num] || x.chars.count("1")
  	arr[num] = count

    surp = num % count
    if surp == 0
      puts time
      break
    end
    
    num = surp
    x = num.to_s(2)
  end
end

