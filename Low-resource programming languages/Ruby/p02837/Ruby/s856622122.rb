def solve(people)
  $answers.each do |person, ans|
    if people[person]
      # 正直者だったら、答えが間違いなら即アウト
      ans.each do |to, is|
        if people[to] != is
          return false
        end
      end
    else
      # 真偽不明ならスルー
      # 嘘つきだったら、答えが正しいなら即アウト
      # ans.each do |to, is|
      #   if people[to] == is
      #     return false
      #   end
      # end
    end
  end
  true
end

def create_people(num_of_truthy)
  truthy = num_of_truthy
  falsy = N - truthy

  peoples = []
  (0..(N-1)).to_a.combination(falsy).each do |fal|
    people = Array.new(N) { true }
    fal.each do |f|
      people[f] = false
    end
    peoples.push people
  end

  peoples
end

N = gets.chomp.to_i

$answers = {}
N.times do |n|
  ans = {}
  gets.chomp.to_i.times do
    a = gets.chomp.split.map(&:to_i)
    ans[a.first-1] = a.last == 1
  end
  $answers[n] = ans
end

N.downto(0) do |num_of_truthy|
  peoples = create_people(num_of_truthy)

  peoples.each do |people|
    if solve(people)
      puts num_of_truthy
      exit
    end
  end
end
