N = gets.to_i
H_array = gets.split.map(&:to_i)
h_bucket = [-1]
count = 0
H_array.each{|h|
  isview = true
  h_bucket.each{|b|
    if b > h
      isview = false
      break
    end
  }

  if isview
    count += 1
    h_bucket << h
  end
}

puts count
