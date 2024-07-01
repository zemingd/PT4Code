A = []
3.times do
  A << gets.chomp.split.map(&:to_i)
end
n = gets.chomp.to_i
b = []

n.times do |i|
  b << gets.chomp.to_i
end


3.times do |i|
  3.times do |j|
    flag = false

    n.times do |k|
      flag = true if b[k] == A[i][j]
    end


    if flag == true
      A[i][j] = 1
    else
      A[i][j] = 0
    end



  end
end

if A[0][0] == 1 && A[1][1] == 1 && A[2][2] == 1
  puts 'Yes'
  exit
end

if A[0][2] == 1 && A[1][1] == 1 && A[2][0] == 1
  puts 'Yes'
  exit
end


3.times do |i|
  if A[i][0] == 1 && A[i][1] == 1 && A[i][2]
    puts 'Yes'
    exit
  end
end

3.times do |j|
  if A[0][j] == 1 && A[1][j] == 1 && A[2][j]
    puts 'Yes'
    exit
  end
end


puts 'No'