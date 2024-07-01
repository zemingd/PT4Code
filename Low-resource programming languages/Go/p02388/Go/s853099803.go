package main
import "fmt"

func main(){
  var a,b int
  fmt.Scan(&a)
  b=1
  for i:=0; i<3; i++{
    b*=a
  }
  fmt.Println(b)
}

