package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

func main() {
	sc.Split(bufio.ScanWords)
	X := nextInt()
	Y := nextInt() / 1000

	prices := []int{10, 5, 1}
	dp := make([][][]int, 2)
	for i := 0; i < 2; i++ {
		dp[i] = make([][]int, Y + 1)
		for j := 0; j <= Y; j++ {
			dp[i][j] = make([]int, 3)
			for k := 0; k < 3; k++ {
				dp[i][j][k] = -1
			}
		}
	}

	for k := 0; k < 3; k++ {
		dp[0][0][k] = 0
	}
	cur := 0
	for i := 0; i < X; i++ {
		ncur := cur ^ 1
		for j := 0; j < Y; j++ {
			for k := 0; k < 3; k++ {
				dp[ncur][j][k] = -1
			}
		}
		for j := 0; j < Y; j++ {
			if dp[cur][j][0] == -1 {
				continue
			}
			for k, p := range prices {
				if j + p <= Y {
					dp[ncur][j+p][0] = dp[cur][j][0]
					dp[ncur][j+p][1] = dp[cur][j][1]
					dp[ncur][j+p][2] = dp[cur][j][2]
					dp[ncur][j+p][k]++
				}
			}
		}
		cur = ncur
	}
	fmt.Println(dp[cur][Y][0], dp[cur][Y][1], dp[cur][Y][2])
}


// -------- Library --------
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println("Failed to read int", err)
		os.Exit(1)
	}
	return v
}

func nextIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		res[i] = nextInt()
	}
	return res
}