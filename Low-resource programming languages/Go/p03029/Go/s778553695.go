import "fmt"

func main() {
  var A,P int
  fmt.Scanf("%d %d", &A, &P)
  P += A*3
  fmt.Println(int(P/2))
}