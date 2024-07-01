a,b,c,d=gets.chomp.split.map(&:to_i)

class Monster
    attr_accessor :name, :hitpoint, :attackpoint, :status
    def initialize(name, hitpoint, attackpoint, status)
        @name=name
        @hitpoint=hitpoint
        @attackpoint=attackpoint
        @status=status
    end
    
    def attackEnemy(target)
        target.receiveDamage(@attackpoint)
    end
    
    def receiveDamage(damage)
        @hitpoint-=damage
    end
    
    def isAlive
        if @hitpoint<=0
            @status="dead"
        else
            @status="alive"
        end
    end
end

player1=Monster.new("takahashi",a,b,"alive")
player2=Monster.new("aoki",c,d,"alive")

inBattle=true
attacker=player1
receiver=player2

while inBattle==true do
    attacker.attackEnemy(receiver)
    receiver.isAlive
    
    if receiver.status=="dead"
        inBattle=false
    else
        attacker,receiver=receiver,attacker
    end
end

if attacker.name=="takahashi"
	puts "yes"
else
	puts "no"
end