package main
import "fmt"
 
func swap(num,num2 int)(bool,int,int){
    if num<=num2{
        return false,num,num2
    }else{
        return true,num2,num
    }
}
 
func main(){
    nums:=[3]int{}
    fmt.Scan(&nums[0],&nums[1],&nums[2])
     
    var check bool=true
    for{
        for i:=0;i<2;i++{
            check,nums[i],nums[i+1]=swap(nums[i],nums[i+1])
            if check==true{
                break
            }
        }
        if check==false{
                break
            }
    }
    fmt.Println(nums[0],nums[1],nums[2])
}
