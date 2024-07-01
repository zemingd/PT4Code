package main
 
import (
	"fmt"
)
 
var N, count int
var memo map[string]bool
func main() {
	fmt.Scan(&N)
	for i := 1; i <= N; i++ {
		count = 0
		memo = map[string]bool {}
		dp(1, 1, 1, i)
		fmt.Println(count)
	}
}

func dp (a, b, c, i int) {
	key := string(a) + string(b) + string(c)
	ans := calc(a, b, c)
	if ans == i && !memo[key]{
	    memo[key] = true
		count++
		return
	}
	memo[key] = true
	if ans < i {
	  dp(a + 1, b, c, i)
	  dp(a , b + 1, c, i)
	  dp(a , b, c + 1, i)
	}
}

func calc(x, y, z int) int {
	//return (x * x) + (y * y) + (z * z) + (x * y) + (y * z) + (z * x)
	return x * (x + y + z) + y * (y + z) + z * z
}