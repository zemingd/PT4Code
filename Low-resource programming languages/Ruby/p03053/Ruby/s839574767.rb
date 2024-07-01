# frozen_string_literal: true

def limited_insertion
  n = 0
  b = []
  i = 0
  while line = gets
    n = line[0].to_i if i == 0
    b = line.split(' ').map{|v| v.to_i} if i == 1
    break if i == 1
    i += 1
  end

  a = []
  for i in 1..n
    result = -1
    for j in 1..i
      b.each_with_index do |i, v|
        if v == j
          result = v
          if a[i].nil?
            a << v
          else
            tmp = a[i]
            a[i] = v
          end
        end
      end
      break if a.size == i
    end
    p a


    p result

    break if result == -1
  end
end

limited_insertion
