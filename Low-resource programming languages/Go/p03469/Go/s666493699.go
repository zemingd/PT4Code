package main
import "fmt"

func main() {
  var (
    S string
  )
  fmt.Scan(&S)

  ans := S[0:3] + "8" + S[4:]
  fmt.Println(ans)
}
