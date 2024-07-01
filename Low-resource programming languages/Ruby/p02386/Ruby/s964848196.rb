class Dice
 
	def initialize(aryDice)
    	@dice = aryDice;
    end
 
    #???????¢????
    def checkOperation(operation)
    	case operation
    	when "E" then
    		moveE;
    	when "N" then
    		moveN;
    	when "S" then
    		moveS;
    	when "W" then
    		moveW;
    	end
    end
 
    def searchRightNum(top,front)
 
    	for countMoveN in 0..3 do
    		if @dice[0] == top then
    			break;
    		end
    		moveN;
    	end
 
    	for countMoveE in 0..3 do
    		if @dice[0] == top then
    			break;
    		end
    		moveE;
    	end
 
    	for countMoveR in 0..3 do
    		if @dice[1] == front then
    			break;
    		end
    		moveR;
    	end
 
    end
 
    #E???????????????????§????
    def moveE
    	tmp = @dice[0];
        @dice[0] = @dice[3];
        @dice[3] = @dice[5];
        @dice[5] = @dice[2];
        @dice[2] = tmp;
    end
 
    #N???????????????????§????
    def moveN
    	tmp = @dice[0];
        @dice[0] = @dice[1];
        @dice[1] = @dice[5];
        @dice[5] = @dice[4];
        @dice[4] = tmp;
    end
 
    #S???????????????????§????
    def moveS
    	tmp = @dice[0];
        @dice[0] = @dice[4];
        @dice[4] = @dice[5];
        @dice[5] = @dice[1];
        @dice[1] = tmp;
    end
 
    #W???????????????????§????
    def moveW
    	tmp = @dice[0];
        @dice[0] = @dice[2];
        @dice[2] = @dice[5];
        @dice[5] = @dice[3];
        @dice[3] = tmp;
    end
 
    #R???????????????????§????
    def moveR
    	tmp = @dice[1];
        @dice[1] = @dice[2];
        @dice[2] = @dice[4];
        @dice[4] = @dice[3];
        @dice[3] = tmp;
    end
 
    #???????????????????????????????????¨???
    def getTopNum
    	return @dice[0];
    end
 
    def getBottomNum
    	return @dice[5];
    end
 
    def getRightNum
    	return @dice[2];
    end
 
    def getLeftNum
    	return @dice[3];
    end
 
    def getFrontNum
    	return @dice[1];
    end
 
    def getBackNum
    	return @dice[4];
    end
 
end
 
def checkAllDice(insDice1,insDice2)
	if insDice1.getTopNum == insDice2.getTopNum && 
		insDice1.getBottomNum == insDice2.getBottomNum && 
		insDice1.getRightNum == insDice2.getRightNum && 
		insDice1.getLeftNum == insDice2.getLeftNum && 
		insDice1.getFrontNum == insDice2.getFrontNum && 
		insDice1.getBackNum == insDice2.getBackNum then
 
		isMatch = true;
	end
end
 
def rollDice(insDice1,insDice2)
 
	isMatch = false;
 
	for indexMoveN in 0..3 do
		if checkAllDice(insDice1,insDice2) then
			isMatch = true;
		end	
 
		insDice2.moveN;
		for indexMoveR in 0..3 do
			if checkAllDice(insDice1,insDice2) then
				isMatch = true;
			end
			insDice2.moveR;
		end
	end
 
	for indexMoveE in 0..3 do
		if checkAllDice(insDice1,insDice2) then
			isMatch = true;
		end
		insDice2.moveE;
		for indexMoveR in 0..3 do
			if checkAllDice(insDice1,insDice2) then
				isMatch = true;
			end
			insDice2.moveR;
		end
	end
 
	if isMatch then
		return true;
	else
		return false;
	end
 
end
 
countDice = gets.to_i;
aryDices = Array.new(countDice)
 
for index in 0..countDice -1 do
	aryDice = gets.split(' ').map(&:to_i);
	aryDices[index] = Dice.new(aryDice);
end
 
matchCount = 0;
 
for i in 0..countDice -1 do
    for j in 0..countDice -1 do
        if i != j then
        	if rollDice(aryDices[i],aryDices[j]) then
        		matchCount = matchCount + 1;
        	end
        end
	end
end
 
if matchCount == 0 then
 
    puts "Yes";
else
 
    puts "No";
end