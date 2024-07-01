def input
  return gets.chomp.downcase
end

def call(data)
  ("a".."z").each { |moji|
    printf "%s : %d\n", moji, data.count(moji)
  }
end

loop do
  call(input)
end