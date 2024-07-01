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
  N, _ := strconv.Atoi(n)//連泊回数
  K, _ := strconv.Atoi(k)//k宿泊
  X, _ := strconv.Atoi(x)//kまでの料金
  Y, _ := strconv.Atoi(y)//k+1以降の料金
  
  total_ageX := 0
  total_ageY := 0
  sti := K - N//K宿泊以降の日数
  fmt.Println(sti)
  for i:=1; i <= K; i++{
  	total_ageX += X
  }  
  
  
  
  for p:=1; p <= sti; p++{
   	 total_ageY += Y
  }
  
  fmt.Println(total_ageX+total_ageY)

}