whiteH,whiteW=gets.split.map(&:to_i)
blackH,blackW=gets.split.map(&:to_i)
puts whiteH*whiteW - (blackH*whiteW + blackW*whiteH - blackH*blackW)