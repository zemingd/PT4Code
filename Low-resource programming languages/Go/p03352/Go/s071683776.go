package main
import (
  "fmt"
  "math"
       )
func main(){
  var N float64
  fmt.Scanf("%f",&N)
 
  for i:= N;0<i;i--{
    for a:= 2.0;a<=i;a++{
      for j :=2.0;j<i;j++{
        if math.Pow(a,j) > N {break}
        if i == math.Pow(a,j){
        fmt.Println(i)
        return
      }
      }
    }
  }
  fmt.Println(1)
  return
}