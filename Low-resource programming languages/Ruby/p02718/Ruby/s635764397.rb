n, m = STDIN.gets.split(' ').map(&:to_i)

a = STDIN.gets.split(' ').map(&:to_i)

t = a.sum / 4 / m

cnt = a.count { |b| b >= t }

print cnt >= m ? 'Yes' : 'No'
