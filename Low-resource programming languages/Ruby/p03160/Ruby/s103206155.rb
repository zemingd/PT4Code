class DP
  attr_accessor :value
end

def chmin(dp_object, value)
  if dp_object.value != nil
    if (dp_object.value > value)
      dp_object.value = value
      return dp_object.value
    end
    return dp_object.value
  else
    dp_object.value = value
    return dp_object.value
  end
end

def chmax(dp_object, value)
  if dp_object.value != nil
    if (dp_object.value < value)
      dp_object.value = value
      return dp_object.value
    end
    return dp_object.value
  else
    dp_object.value = value
    return dp_object.value
  end
end

#Test
a = DP.new
chmin(a, 3)
chmin(a, 1)

b = DP.new
chmax(b, 3)
chmax(b, 6)


#Sample
def handler(number, heights)
  result = [0]
  for i in 0..(number - 1)
    if i != 0
      before_row = i - 1
      if before_row != 0
        dp = DP.new
        cost1 = (heights[before_row] - heights[i]).abs + result[before_row]
        cost2 = (heights[i - 2] - heights[i]).abs + result[i - 2]
        chmin(dp, cost1)
        chmin(dp, cost2)
        result.push(dp.value)
      else
        cost = (heights[i - 1] - heights[i]).abs
        result.push(chmin(DP.new, cost))
      end
    end
  end
  return result[number - 1]
end

input1 = gets.chop.to_i
input2 = gets.chop.split.map(&:to_i)
p handler(input1, input2)