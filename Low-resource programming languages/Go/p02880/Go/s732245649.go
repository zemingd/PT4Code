package main
import "fmt"

func main() {
  var n int
  fmt.Scan(&n)
  
  b := false
  for a:=1; a<10; a++ {
    if n % a != 0 {
      break
    }
    n = n / a
    for b:=1; b<10; b++ {
      if n % b != 0 {
        break
      } else if n % b == 0 {
        b = true
      }
    }
  }
  switch b{
    case true:
    fmt.Println("Yes")
    default:
    fmt.Println("No")
  }
      
}