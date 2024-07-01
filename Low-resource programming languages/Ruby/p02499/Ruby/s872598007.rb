def input
  list = ""
  while temp = gets
    list += temp.downcase
  end
  return list
end
 
def call(data)
  ("a".."z").each { |moji|
    printf "%s : %d\n", moji, data.count(moji)
  }
end
 
call(input)