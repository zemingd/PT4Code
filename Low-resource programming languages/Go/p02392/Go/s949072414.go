package main
import "fmt"

func check(num,num2 int)(bool){
    if num<num2{
        return true
    }else{
        return false
    }
}

func main(){
    nums:=[3]int{}
    fmt.Scan(&nums[0],&nums[1],&nums[2])
    
    var checkBool bool
    for i:=0;i<2;i++{
        checkBool=check(nums[i],nums[i+1])
        if checkBool==false{
            break
        }
    }
    
    if checkBool==true{
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}

