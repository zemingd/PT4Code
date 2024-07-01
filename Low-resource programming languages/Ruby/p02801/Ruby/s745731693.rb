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
  c = get_str
  alp = ('a'..'z').to_a
  index = alp.index(c) + 1
  puts alp[index]
end

if __FILE__ == $0
  main
end