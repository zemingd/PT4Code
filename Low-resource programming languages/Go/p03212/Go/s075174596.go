package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var numbers = []int{3, 5, 7}
var n int
var digitsLen int

func main() {
	fmt.Scan(&n)
	digitsLen = len(strconv.Itoa(n))

	fmt.Println(dfs(0, 0, 0, 0, 0, 0))
}

var dp = [1000000100]bool{}

func dfs(i, d, sum, n1, n2, n3 int) int {
	// fmt.Println(i)
	if i == digitsLen {
		if len(strconv.Itoa(sum)) >= 3 && n1 >= 1 && n2 >= 1 && n3 >= 1 && !dp[sum] {
			dp[sum] = true
			// fmt.Println(sum)
			return 1
		}
		return 0
	}

	// var count int
	count := dfs(i+1, d, sum, n1, n2, n3)

	if res := sum + numbers[0]*int(math.Pow(10.0, float64(d))); res <= n {
		count += dfs(i+1, d+1, res, n1+1, n2, n3)
	}

	if res := sum + numbers[1]*int(math.Pow(10.0, float64(d))); res <= n {
		count += dfs(i+1, d+1, res, n1, n2+1, n3)
	}

	if res := sum + numbers[2]*int(math.Pow(10.0, float64(d))); res <= n {
		count += dfs(i+1, d+1, res, n1, n2, n3+1)
	}
	return count
}
