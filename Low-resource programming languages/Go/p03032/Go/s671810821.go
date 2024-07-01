package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	v := make([]int, n)
	sorted := make([]int, n)
	for i := 0; i < n; i++ {
		scanner.Scan()
		v[i], _ = strconv.Atoi(scanner.Text())
		sorted[i] = v[i]
	}
	sort.Ints(sorted)

	dpl := make([][]int, n+1)
	dpl[0] = make([]int, k+1)
	for i := 0; i <= k; i++ {
		dpl[0][i] = 0
	}
	dpr := make([][]int, n+1)
	dpr[0] = make([]int, k+1)
	for i := 0; i <= k; i++ {
		dpr[0][i] = 0
	}

	for i := 1; i <= n; i++ {
		size := k + 1 - i
		if size < 1 {
			break
		}

		dpl[i] = make([]int, size)
		dpr[i] = make([]int, size)

		var lSum int
		var ls []int
		for j := 0; j < i; j++ {
			lSum += v[j]
			ls = append(ls, v[j])
		}
		sort.Ints(ls)
		dpl[i][0] = lSum
		for j := 1; j < k+1-i; j++ {
			if j-1 < i && ls[j-1] < 0 {
				lSum -= ls[j-1]
			}
			dpl[i][j] = lSum
		}

		var rSum int
		var rs []int
		for j := 0; j < i; j++ {
			rSum += v[n-1-j]
			rs = append(rs, v[n-1-j])
		}
		sort.Ints(rs)
		dpr[i][0] = rSum
		for j := 1; j < k+1-i; j++ {
			if j-1 < i && rs[j-1] < 0 {
				rSum -= rs[j-1]
			}
			dpr[i][j] = rSum
		}
	}

	var max int
	for i := 0; i <= n; i++ {
		for j := 0; j <= n-i; j++ {
			for x := 0; x <= k-i-j; x++ {
				if dpl[i][x]+dpr[j][k-i-j-x] > max {
					max = dpl[i][x] + dpr[j][k-i-j-x]
				}
			}
		}
	}

	fmt.Println(max)
}
