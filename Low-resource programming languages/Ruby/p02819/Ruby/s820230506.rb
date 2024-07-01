x = gets.to_i

def check_prime(num)
  case num
  when 1 then
    false
  when 2 then
    true
  else
    (2..(num-1)).each do |index|
      if num % index == 0
        return false
      end
    end
    return true
  end
end

loop do
  if check_prime(x)
    puts x
    exit
  else
    x += 1
  end
end

