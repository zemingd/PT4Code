def get_int
  gets.chop.to_i
end

def get_ints
  gets.chop.split.map(&:to_i)
end

def get_double
  gets.chop.to_f
end

def get_str
  gets.chop
end

def get_strs
  gets.chop.split
end

def main
  n, k, q = get_ints
  a_arr = []
  points = [k - q] * n
  0.upto(q - 1) do |i|
    a = get_int
    a -= 1
    points[a] += 1
  end
  0.upto(n - 1) do |i|
    point = points[i]
    if point > 0
      puts "Yes"
    else
      puts "No"
    end
  end
end

if __FILE__ == $0
  main
end
