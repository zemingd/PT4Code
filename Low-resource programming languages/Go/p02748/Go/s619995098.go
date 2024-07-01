package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func solution(a, b []int, xs [][]int) int {
	ans := 1 << 31
	for _, x := range xs {
		cur := a[x[0]-1] + b[x[1]-1] - x[2]
		ans = min(ans, cur)
	}
	sort.Ints(a)
	sort.Ints(b)
	cur := a[0] + b[0]
	ans = min(ans, cur)
	return ans
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	var a, b, m int
	fmt.Scan(&a, &b, &m)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	as := make([]int, a)
	for i := 0; i < a; i++ {
		sc.Scan()
		n, _ := strconv.Atoi(sc.Text())
		as[i] = n
	}

	bs := make([]int, b)
	for i := 0; i < b; i++ {
		sc.Scan()
		n, _ := strconv.Atoi(sc.Text())
		bs[i] = n
	}

	xs := make([][]int, m)
	for i := range xs {
		xs[i] = make([]int, 3)
		for j := 0; j < 3; j++ {
			sc.Scan()
			n, _ := strconv.Atoi(sc.Text())
			xs[i][j] = n
		}
	}

	fmt.Println(solution(as, bs, xs))
}
