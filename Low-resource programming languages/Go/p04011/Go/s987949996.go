package main

import(
	"fmt"
  	"bufio"
  	"os"
  	"strconv"
)

func nestLine() string {
  sc.Scan()
  return sc.Text()
}
var sc = bufio.NewScanner(os.Stdin)
func main(){
  n,k,x,y := nestLine(),nestLine(),nestLine(),nestLine()
  N, _ := strconv.Atoi(n)
  K, _ := strconv.Atoi(k)
  X, _ := strconv.Atoi(x)
  Y, _ := strconv.Atoi(y)
  
  total_ageX := 0
  total_ageY := 0
  for i:=1; i <= K; i++{
  	total_ageX += X
  }  
  
  for num := K; num <= N; num++{
   	 total_ageY += Y
     fmt.Println(total_ageY)
  }
  
  fmt.Println(total_ageX+total_ageY)

}