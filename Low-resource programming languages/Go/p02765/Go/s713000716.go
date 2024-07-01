package main
 
import (
	"fmt"
  //"sort"
	//"strconv"
)
 
func main() {
  var N,R int
  fmt.Scanf("%d %d",&N,&R)
  if N>=10{
    fmt.Print(R)
  }else{
    fmt.Print(R+100*(-1*(N-10)))
  }
}