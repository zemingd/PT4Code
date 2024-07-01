package main
import(
  "fmt"
)
func main(){
  var a,b int
  fmt.Scan(&a)
  fmt.Scan(&b)
  if a>b{
    fmt.Println(2*a-1)
  }else if a<b{
    fmt.Println(2*b-1)
  }else{
    fmt.Println(2*a) 
  }
}