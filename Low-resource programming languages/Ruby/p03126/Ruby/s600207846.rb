input1 = gets.to_s

numOfPeople = input1.split(" ")[0].to_i
numOfFood = input1.split(" ")[1].to_i
arrayOfAnswers = []

for times in 0..numOfPeople-1 do
    arrayOfAnswer = []
    input2 = gets.to_s
    arrayOfAnswer = input2.split(" ")
    arrayOfAnswer = arrayOfAnswer.map!{|x| x.to_i}.drop(1)

    arrayOfAnswers << arrayOfAnswer
end

numOfFoodAllPeopleFavorite = 0

for food in 1..numOfFood do
    timesOfFavarite = 0

    arrayOfAnswers.each{ |arrayOfAnswer|
       if  arrayOfAnswer.include?(food) then
         timesOfFavarite = timesOfFavarite + 1  
       end         
    }

    if timesOfFavarite == numOfPeople then
        numOfFoodAllPeopleFavorite = numOfFoodAllPeopleFavorite + 1
    end
end

puts numOfFoodAllPeopleFavorite