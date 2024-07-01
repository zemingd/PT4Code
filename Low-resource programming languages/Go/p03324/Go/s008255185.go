package main
import "fmt"

func main(){
  var a, b, ans int
  
  fmt.Scanf("%d %d",&b,&a)
  
  if b == 0 {
    ans = 1
  } else if b == 1{
    ans = 100
  } else {
    ans = 10000
  }
  
  if a == 100 {
    ans = ans * 101
  } else {
    ans = ans * a
  }
  fmt.Println(ans)
}
