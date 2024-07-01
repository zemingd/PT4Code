package main
import "fmt"
func main(){
     var hp,n,at int
     sum:=0
     fmt.Scanf("%d %d",&hp,&n)
     for i:=0;i<n;i++{
         fmt.Scanf("%d",&at)
         sum+=at
     }
     if sum<hp{
        fmt.Println("No")
     }else{
        fmt.Println("Yes")
     }
}