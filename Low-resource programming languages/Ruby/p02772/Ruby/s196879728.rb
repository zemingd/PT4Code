def main
  n = gets.to_i
  a = gets.split("\s").map(&:to_i).select { |i| i % 2 == 0 }

  a.each do |i|
    if i % 3 != 0 && i % 5 != 0
      return 'DENIED'
    end
  end
  return 'APPROVED'
end

print main