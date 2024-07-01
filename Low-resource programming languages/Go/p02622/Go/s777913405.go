package main
import "fmt"
var S, T string
func max(a, b int) int {
  if a > b { return a }
  return b
}
func main() {
	fmt.Scanf("%s", &S)
	fmt.Scanf("%s", &T)
	m := len(S)
	dp := make([][]int, m+1)
	for i := range dp {
		dp[i] = make([]int, m+1)
	}

	for i:=1; i<m+1; i++ {
		for j:=1; j<m+1; j++ {
			if S[i-1] == T[j-1] {
				dp[i][j] = dp[i-1][j-1] + 1
			} else {
				dp[i][j] = max(dp[i][j-1], dp[i-1][j])
			}
		}
	}
	fmt.Println(len(S) - dp[m][m])
}