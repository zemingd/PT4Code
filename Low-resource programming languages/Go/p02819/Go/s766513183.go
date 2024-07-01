package main
 
import(
  "fmt"
  "math"
)

func solver(a int){
  flag := false
  for ;;{
    flag = judge(a)
    if flag == true{
      fmt.Println(a)
      break
    }
    a = a + 1
  }
}

func judge(a int) bool{
  sq := math.Sqrt(float64(a))
  for i:=2; i<int(sq)+1; i++{
    if a%i == 0{
      return false
    }
  }
  return true
}

func main(){
  a := 0
  fmt.Scan(&a)
  solver(a)
}