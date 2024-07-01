_ = gets.to_i
A = gets.split.map(&:to_i)

def check(array)
  array.each do |ai|
    if ai.even?
      if ai % 3 != 0 && ai % 5 != 0
        puts "DENIED"
        return
      end
    end
  end

  puts "APPROVED"
end

check(A)