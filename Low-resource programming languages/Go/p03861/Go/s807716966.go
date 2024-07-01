package main
import "fmt"
var v1,v2,v3,res uint64
func main(){
  fmt.Scan(&v1,&v2,&v3)
  res = v2/v3 - v1/v3
  if v1%v3 == 0 {
    println(res + 1)
  }else{
    println(res)
  }
  
  
}