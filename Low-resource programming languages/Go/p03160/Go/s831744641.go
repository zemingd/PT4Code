package main
import "fmt"

func min(a, b int) int {
	if a < b { return a }
	return b
}

func abs(a int) int {
	if a < 0 { return -a }
	return a
}

func main() {
	_,e := fmt.Scanf("%d", &n)
	if e!= nil { return }
	if n<=1 {
		fmt.Println(0)
		return
	}
	A = make([]int, n+1)
	for i:=1; i<=n; i++ {
		_,e := fmt.Scanf("%d", &A[i])
		if e != nil { return }
	}
	if n == 2 {
		fmt.Println(abs(A[2]-A[1]))
		return
	}
	dp := make([]int, n+1)
	dp[1] = 0
	dp[2] = abs(A[2]-A[1])
	for i:=3; i<=n; i++ {
		dp[i] = min(dp[i-1] + abs(A[i] - A[i-1]), dp[i-2]+abs(A[i] - A[i-2]))
	}
	fmt.Println(dp[n])
}