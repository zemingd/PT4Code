package main

import "os"
import "fmt"
import "strconv"
import "bufio"
import "strings"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(a ...int) int {
	v := -1
	for i := 0; i < len(a); i++ {
		if v == -1 || v > a[i] {
			v = a[i]
		}
	}
	return v
}

func solve(n int, hs []int) int {
	dp := make([]int, n)
	for i := 1; i < n; i++ {
		x := -1
		if i-1 >= 0 {
			x = min(x, dp[i-1] + abs(hs[i]-hs[i-1]))
		}
		if i-2 >= 0 {
			x = min(x, dp[i-2] + abs(hs[i]-hs[i-2]))	
		}
		dp[i] = x
	}
	return dp[n-1]
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	n := 0
	var hs []int
	i := 0
	for scanner.Scan() {
		if i == 0 {
			t, _ := strconv.ParseInt(scanner.Text(), 10, 32)
			n = int(t)
		} else {
			hs = make([]int, n)
			strs := strings.Split(scanner.Text(), " ")
			for i := 0; i < n; i++ {
				t, _ := strconv.ParseInt(strs[i], 10, 32)
				hs[i] = int(t)
			}
			break
		}
		i++	
	}
	fmt.Println(solve(n, hs))
}