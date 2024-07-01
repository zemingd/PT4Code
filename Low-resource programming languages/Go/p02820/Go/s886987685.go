package main

import (
	"fmt"
)

func main() {
	nk := scanNums(2)
	n := nk[0]
	k := nk[1]

	rsp := scanNums(3)
	r := rsp[0]
	s := rsp[1]
	p := rsp[2]

	var t string
	fmt.Scan(&t)

	dplen := (n+k-1)/k + 1
	dp, _ := init3D(k, dplen, 3)

	var i, j int64
	for i = 0; i < k; i++ {
		for j = 0; j < 3; j++ {
			dp[i][0][j] = 0
		}
	}

	for i = k; i < k*dplen; i++ {
		var l, m int64
		l = i % k
		m = i / k

		if i-k < n && t[i-k] == 'r' {
			dp[l][m][0] = max(dp[l][m-1][1], dp[l][m-1][2])
			dp[l][m][1] = max(dp[l][m-1][0], dp[l][m-1][2])
			dp[l][m][2] = max(dp[l][m-1][0], dp[l][m-1][1]) + p
		} else if i-k < n && t[i-k] == 's' {
			dp[l][m][0] = max(dp[l][m-1][1], dp[l][m-1][2]) + r
			dp[l][m][1] = max(dp[l][m-1][0], dp[l][m-1][2])
			dp[l][m][2] = max(dp[l][m-1][0], dp[l][m-1][1])
		} else if i-k < n && t[i-k] == 'p' {
			dp[l][m][0] = max(dp[l][m-1][1], dp[l][m-1][2])
			dp[l][m][1] = max(dp[l][m-1][0], dp[l][m-1][2]) + s
			dp[l][m][2] = max(dp[l][m-1][0], dp[l][m-1][1])
		} else {
			dp[l][m][0] = max(dp[l][m-1][1], dp[l][m-1][2])
			dp[l][m][1] = max(dp[l][m-1][0], dp[l][m-1][2])
			dp[l][m][2] = max(dp[l][m-1][0], dp[l][m-1][1])
		}
	}

	var ans int64 = 0
	for i = 0; i < k; i++ {
		if dp[i][dplen-1][0] > dp[i][dplen-1][1] && dp[i][dplen-1][0] > dp[i][dplen-1][2] {
			ans += dp[i][dplen-1][0]
		} else if dp[i][dplen-1][1] > dp[i][dplen-1][0] && dp[i][dplen-1][1] > dp[i][dplen-1][2] {
			ans += dp[i][dplen-1][1]
		} else {
			ans += dp[i][dplen-1][2]
		}
	}

	fmt.Println(ans)
}

func max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

func scanNums(len int64) (nums []int64) {
	var num int64
	var i int64
	for i = 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func init3D(x, y, z int64) ([][][]int64, error) {
	if x < 1 || y < 1 || z < 1 {
		return nil, fmt.Errorf("invalid length")
	}
	resVal := make([][][]int64, x)
	var i, j int64
	for i = 0; i < x; i++ {
		resVal[i] = make([][]int64, y)
		for j = 0; j < y; j++ {
			resVal[i][j] = make([]int64, z)
		}
	}
	return resVal, nil
}
