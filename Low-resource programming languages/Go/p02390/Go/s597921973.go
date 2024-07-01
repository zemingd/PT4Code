package main
import "fmt"
func main(){
    var inS int
    hms:=[]int{3600,60,1}
    hmsCount:=[]int{0,0,0}
    fmt.Scan(&inS)
    
    for i:=0;i<3;i++{
        for{
            if tmp:=inS-hms[i];tmp>=0{
                inS-=hms[i]
                hmsCount[i]++
            }else{
                break
            }
        }
    }
    
    
    
    fmt.Printf("%d:%d:%d\n",hmsCount[0],hmsCount[1],hmsCount[2])
    
}

