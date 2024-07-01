package main
 
import (
	"fmt"
)

var K, N, ans, a int
func main() {
	fmt.Scan(&K)
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		ans += a % (K / 2)
	}
	fmt.Println(ans)
}
