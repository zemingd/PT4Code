package main
import "fmt"
func main(){
     var hp,at int
     fmt.Scanf("%d %d",&hp,&at)
     ans:=hp/at
     if hp%at != 0 {
        ans++
     }
     fmt.Println(ans)
}