def mul(a, b, n, m)
  c = []
  for i in 0..(n-1)
    ai = a[i]
    c.push(dot(ai, b, m))
  end
  return c
end

def dot(x, y, m)
  dot_xy_array = []
  dot_xy = 0
  for i in 0..(m-1)
    dot_xy_array.push(x[i] * y[i])
  end
  dot_xy = 0
  dot_xy_array.each do |i|
    dot_xy += i
  end
  return dot_xy
end

def mul_matrix(arrayA, arrayB, n, m, l)
  mul_matrix_array = []
  for i in 0..(l-1)
    mul_matrix_array.push(mul(arrayA, arrayB[i], n, m))
  end
  return mul_matrix_array
end

input_nml_array = gets.chomp.split.map(&:to_i)
n = input_nml_array[0]
m = input_nml_array[1]
l = input_nml_array[2]
input_a_arrays = []
n.times do
  input_a_array = gets.chomp.split.map(&:to_i)
  input_a_arrays.push(input_a_array)
end
input_b_arrays = []
m.times do
  input_b_array = gets.chomp.split.map(&:to_i)
  input_b_arrays.push(input_b_array)
end
input_b_column_vector_array = []
for i in 0..(l-1)
  tmp = []
    for j in 0..(m-1)
      tmp.push(input_b_arrays[j][i])
    end
    input_b_column_vector_array.push(tmp)
end

answers = mul_matrix(input_a_arrays, input_b_column_vector_array, n, m, l)
for i in 0..(n-2)
  for j in 0..(l-1)
    print answers[j][i]
    print " "
  end
  print "\n"
end
for i in 0..(l-2)
  print answers[i][n-1]
  print " "
end
print answers[l-1][n-1]
print "\n"