package main
import "fmt"

func main() {
  var (
    A int
    B int
    X int
  )
  fmt.Scan(&A)
  fmt.Scan(&B)
  fmt.Scan(&X)
  if (A > X) {
    fmt.Println("NO")
  } else if (A + B < X) {
    fmt.Println("NO")
  } else {
    fmt.Println("YES")
  }
}
