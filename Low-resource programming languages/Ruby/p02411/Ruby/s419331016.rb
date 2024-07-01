def read_inputs
  exam_results = []
  while true do
    exam_result = gets.split(" ").map(&:to_i)
    case exam_result
      when [-1, -1, -1] then break
      else exam_results << exam_result
    end
  end
  exam_results
end

def score(m, f, r)
  return "F" if m == -1 || f == -1
  total = m + f
  return "A" if total >= 80
  return "B" if total >= 65
  return "C" if total >= 50 || r >= 50
  return "D" if total >= 30
  "F"
end

exam_results = read_inputs
puts exam_results.map {|r| score(*r)}.join("\n")