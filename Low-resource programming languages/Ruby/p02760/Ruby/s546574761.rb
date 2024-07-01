A = 3.times.map { gets.split.map(&:to_i) }
N = gets.to_i
B = N.times.map { gets.to_i }

def check(n)
  3.times do |i|
    3.times do |j|
      if A[i][j] == n
        A[i][j] = -1
      end
    end
  end
end

B.each do |b|
  check(b)
end

def bingo?
  return true if [A[0][0], A[0][1], A[0][2]].all? { |x| x == -1 }
  return true if [A[1][0], A[1][1], A[1][2]].all? { |x| x == -1 }
  return true if [A[2][0], A[2][1], A[2][2]].all? { |x| x == -1 }
  return true if [A[0][0], A[1][0], A[2][0]].all? { |x| x == -1 }
  return true if [A[0][1], A[1][1], A[2][1]].all? { |x| x == -1 }
  return true if [A[0][2], A[1][2], A[2][2]].all? { |x| x == -1 }
  return true if [A[0][0], A[1][1], A[2][2]].all? { |x| x == -1 }
  return true if [A[0][2], A[1][1], A[2][0]].all? { |x| x == -1 }
  false
end

if bingo?
  puts 'Yes'
else
  puts 'No'
end
