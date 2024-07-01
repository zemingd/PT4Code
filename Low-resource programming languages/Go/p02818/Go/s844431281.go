package main
 
import(
  "fmt"
)

func solver(a int, b int, sum int){
  a = a - sum
  if a < 0{
    b = b + a
    a = 0
  }
  if b < 0{
    b = 0
  }
  fmt.Println(a , b)
}
 
func main(){
  a := 0
  b := 0
  sum := 0
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&sum)
  solver(a,b,sum)
}