def count_left1(s)
  len = 0
  s.each_char{|c|
    if c == '1'
      len += 1
    else
      break
    end
  }
  return len
end

def find_first_non1(s)
  s.each_char{|c|
    if c != '1'
      return c
    end
  }
  return '1' # strange
end

s = gets.chomp!
k = gets.to_i

n_left1 = count_left1(s)
if k <= n_left1
  puts 1
else
  c = find_first_non1(s)
  puts c
end
