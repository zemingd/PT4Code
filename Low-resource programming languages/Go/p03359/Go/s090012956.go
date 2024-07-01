package main
import "fmt"
func main(){
  var a,b int
  fmt.Scan(&a)
  fmt.Scan(&b)
  if(a>b){a-=1}
  fmt.Println(a)
}