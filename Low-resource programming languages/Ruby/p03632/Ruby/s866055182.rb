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

def action_handler(a, b, c, d)
  start_dp = DP.new
  stop_dp = DP.new

  chmax(start_dp, a)
  chmax(start_dp, c)

  chmin(stop_dp, b)
  chmin(stop_dp, d)

result = stop_dp.value - start_dp.value
  p result
end
a, b, c, d = gets.chop.split.map(&:to_i)

action_handler(a, b, c, d)
