package main
 
import (
	"fmt"
)
 
var n, ans int
func main() {
	fmt.Scan(&n)
	for i := 1; i <= n; i ++ {
		if i % 3 != 0 && i % 5 != 0 {
			ans += i
		}
	}
	fmt.Println(ans)
}
