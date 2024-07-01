A = []
A.push gets.split.map(&:to_i)
A.push gets.split.map(&:to_i)
A.push gets.split.map(&:to_i)
N = gets.to_i
B = []
N.times do
  B.push gets.to_i
end


B.each do |b|
  A.each do |a|
    searched = false
    a.each_with_index do |n, i|
      if n == b
        a[i] = 0
        searched = true
        break
      end
    end
    break if searched
  end

  if A.any?{|a| a.all?{|x| x == 0 }}
    puts 'Yes'
    exit
  end

  3.times do |i|
    if A.all?{|a| a[i] == 0 }
      puts 'Yes'
      exit
    end
  end

  if A[0][0] == 0 && A[1][1] == 0 && A[2][2] == 0
    puts 'Yes'
    exit
  end

  if A[0][2] == 0 &&  A[1][1] == 0 && A[2][0] == 0
    puts 'Yes'
    exit
  end
end
puts 'No'