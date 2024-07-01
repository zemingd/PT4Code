package main
import "fmt"

func main() {
  var sum int = 0
  var num int
  fmt.Scan(&num)
  
  for i:= 1;i <= num; i++{
    sum += i
  }
  
  fmt.Println(sum)
}
  