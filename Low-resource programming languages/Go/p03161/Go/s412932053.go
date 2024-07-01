package main
import "fmt"

const MaxInt = 1<<31
var k int
var n int
var A []int
func min(a, b int) int {
	if a < b { return a }
	return b
}
func abs(a int) int {
	if a < 0 { return -a }
	return a
}
func main() {
	_,e := fmt.Scanf("%d%d", &n, &k)
	if e!= nil { return }
	if n<=1 {
		fmt.Println(0)
		return
	}
	A = make([]int, n+1)
  	dp := make([]int, n+1)
	for i:=1; i<=n; i++ {
		_,e := fmt.Scanf("%d", &A[i])
		if e != nil { return }
     	dp[i] = MaxInt
	}
	if n == 2 {
		fmt.Println(abs(A[2]-A[1]))
		return
	}
	dp[1] = 0
	for i:=2; i<=n; i++ {
		for j:=1; j<=k; j++ {
			if i-j >= 1 {
				dp[i] = min(dp[i], dp[i-j]+abs(A[i] - A[i-j]))
			}
		}

	}
	fmt.Println(dp[n])
}
