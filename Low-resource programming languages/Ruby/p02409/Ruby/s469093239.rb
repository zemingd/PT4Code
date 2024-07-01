A = [
    [
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0]
    ],
    [
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0]
    ],
    [
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0]
    ],
    [
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0]
    ]
  ]

n = gets.chomp.to_i
input_values = []
n.times do
  input_value  = gets.chomp.split.map(&:to_i)
  input_values.push(input_value)
end
for i in 0..(n-1)
  b = input_values[i][0].to_i
  f = input_values[i][1].to_i
  r = input_values[i][2].to_i
  v = input_values[i][3].to_i
  A[b-1][f-1][r-1] += v
end

for i in 0..2
  for j in 0..2
    print " "
    print A[i][j].join(' ')
    print"\n"
  end
  print "####################\n"
end

for i in 0..2
  print " "
  print A[3][i].join(' ')
  print"\n"
end