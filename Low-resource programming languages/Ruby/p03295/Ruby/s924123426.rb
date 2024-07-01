input = gets.split(' ')
n = input[0].to_i
m = input[1].to_i

broken = [[0, n+1]]
for i in 1..m
  input = gets.split(' ')
  a = input[0].to_i
  b = input[1].to_i

  flag = false
  broken.each { |br|
    if a < br[1] && b > br[0]
      if a > br[0]
        br[0] = a
      end
      if b < br[1]
        br[1] = b
      end

      flag = true
      break
    end
  }

  if !flag
    broken.push([a, b])
  end
end

puts broken.length