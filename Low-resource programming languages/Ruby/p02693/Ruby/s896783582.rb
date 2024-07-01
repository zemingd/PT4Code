K = STDIN.gets.to_f
A, B = STDIN.gets.split(' ').map(&:to_f)

v = (B / K).floor * K
r = v >= A ? 'OK' : 'NG'

print r