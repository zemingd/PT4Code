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
    for i:=1; i<10; i++ {
      if n % i != 0 {
        break
      } else if n % i == 0 {
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
