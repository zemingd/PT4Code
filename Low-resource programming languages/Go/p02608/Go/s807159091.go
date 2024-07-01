package main
 
import (
	"fmt"
)
 
var N, count int
func main() {
	fmt.Scan(&N)
	for i := 1; i <= N; i++ {
		count = 0
		memo := map[string]bool {}
		dp(1, 1, 1, i, 0, memo)
		fmt.Println(count)
	}
}

func dp (a, b, c, i, ans int, memo map[string]bool) {
	//fmt.Printf("a %v b %v c %v i %v ans %v\n", a, b, c, i, ans)
	if ans > i { return }
	newans := calc(a, b, c)
	key := string(a) + string(b) + string(c)
	if newans == i && !memo[key]{
	    memo[key] = true
		count++
		return
	}
	memo[key] = true
	dp(a + 1, b, c, i, newans, memo)
	dp(a , b + 1, c, i, newans, memo)
	dp(a , b, c + 1, i, newans, memo)
}

func calc(x, y, z int) int {
	return (x * x) + (y * y) + (z * z) + (x * y) + (y * z) + (z * x)
}