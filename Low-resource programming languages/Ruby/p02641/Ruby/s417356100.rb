input = readlines()

meta = input.shift.chomp.split("\s").map{|x| x.to_i}

target_num = meta[0]

forbid_list = input.shift.split("\s").map{|x| x.to_i}

nearlest = nil
n_abs = nil
(-100..200).each do |x|
  next if forbid_list.include?(x)
  c_abs = (target_num - x).abs
  if n_abs.nil? || c_abs <= n_abs
    if n_abs.nil? || c_abs < n_abs
      nearlest = x
      n_abs = c_abs
      next
    end
    if c_abs == n_abs && nearlest > x
      nearlest = x
      n_abs = c_abs
    end
  end
end

puts nearlest
