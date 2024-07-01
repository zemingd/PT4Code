
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
  n = get_int
  a_arr = get_ints
  a_arr = a_arr.map.with_index { |num, index| [num, index+1] }
  a_arr.sort_by! {|ele| ele[0] }
  puts a_arr.map {|ele| ele[1]}.join(" ")
end

if __FILE__ == $0
  main
end
