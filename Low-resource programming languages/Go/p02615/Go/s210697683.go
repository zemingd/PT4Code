package main
 
import (
	"fmt"
)
 
var n, a, ans int
func main() {
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		ans += a
	}
	ans -= 1
	if ans < 0 {
		ans = 0
	}
	fmt.Println(ans)
}

