package main
import "fmt"
var v1,v2,v3,res uint64
func main(){
  
  fmt.Scan(&v1,&v2,&v3)
  res = v2/v3 - v1/v3
  if v1%v3 == 0 {
    fmt.Println(res + 1)
  }else{
    fmt.Println(res)
  }
  
  
}
