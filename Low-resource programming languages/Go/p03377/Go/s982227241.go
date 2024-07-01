package main
 
import "fmt"
 
func main(){
  var a,b,x int 
  fmt.Scanf("%d %d %d",&a,&b,&x)
  if a+b-x>0{
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
 
}