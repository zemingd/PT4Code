package main
 
import (
	"fmt"
  	"math"
  //"sort"
	//"strconv"
)
 
func main() {
  var N,K int
  fmt.Scanf("%d %d",&N,&K)
  for i:=0.0;i<1000.0;i++{
    if math.Pow(float64(K),i)<=float64(N) && float64(N)<math.Pow(float64(K),i+1){
      fmt.Println(i+1) 
    }
  }
}