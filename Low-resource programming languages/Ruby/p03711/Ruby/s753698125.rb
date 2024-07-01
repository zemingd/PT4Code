x, y = gets.split(' ').map(&:to_i)

group = [nil, 0, 2, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0]

print(group[x] == group[y] ? 'Yes' : 'No')
print("\n")
