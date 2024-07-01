package main

func main() {
  	var n int
  	fmt.Scan(&n)
    in := make([]int, n)
    for i := range in {
    	fmt.Scan(&in[i])
    }
    fmt.Println(frog(in))
}

func frog(in []int) int {
	dp := make([]int, len(in))
	dp[1] = abs(in[0] - in[1])

	for i := 2; i < len(in); i++ {
		dp[i] = min(dp[i-1]+abs(in[i]-in[i-1]), dp[i-2]+abs(in[i]-in[i-2]))
	}

	return dp[len(in)-1]
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
