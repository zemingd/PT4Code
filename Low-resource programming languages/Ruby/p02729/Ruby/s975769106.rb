IN = gets.chomp.split(" ").map(&:to_i)
KI = IN[0]
GU = IN[1]

count = 0

count += KI * (KI - 1) / 2
count += GU * (GU - 1) / 2

print(count)