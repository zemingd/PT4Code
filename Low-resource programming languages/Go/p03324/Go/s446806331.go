package main
import "fmt"

func main(){
  var a, b, ans int
  
  fmt.Scanf("%d %d",&b,&a)
  
  if b == 0 {
    ans = a
  } else if b == 1{
    ans = a * 100
  } else {
    ans = a * 10000
  }
  fmt.Println(ans)
}
