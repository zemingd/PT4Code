A = gets.chomp.scan(/./).map &:to_i
[false, true].product([false, true], [false, true]).each do |op|
  s = A[0]
  for i in 0...3
    if op[i]
      s += A[i+1]
    else
      s -= A[i+1]
    end
  end
  if s==7
    print A[0]
    for i in 0...3
      print (op[i] ? '+' : '-')
      print A[i+1]
    end
    puts '=7'
    exit
  end
end

