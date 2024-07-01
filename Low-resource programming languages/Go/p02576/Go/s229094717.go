package main
 
import (
	"fmt"
)
 
func main() {
	var n, x, t int
	fmt.Scanf("%d %d %d", &n, &x, &t)

	ans := n / x
    if n % x != 0{
      ans++
    }
	ans *= t
	fmt.Printf("%d\n", ans)
}