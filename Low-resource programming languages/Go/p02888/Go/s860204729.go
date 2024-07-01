package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	L := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range L {
		sc.Scan()
		L[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(L)
	ans := 0
	fmt.Println("n", n, "L", L)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			// L[i],L[j]は確定
			// L[k] < L[i]+L[j]なkを高速に見つけたい
			// lはソート済みなので、２分探索すればよい
			r := lowerbound(L, L[i]+L[j])
			l := j + 1
			fmt.Printf("(i %d, j %d) -> (r %d, l %d)\n", i, j, r, l)
			ans += max(0, r-l)
		}
	}
	fmt.Println(ans)
}

// indexが条件を満たすかどうか？
func isOK(a []int, index, key int) bool {
	if a[index] >= key {
		return true
	}
	return false
}

func lowerbound(a []int, key int) int { // 条件を満たす最小のrightを求めたい
	left, right := -1, len(a)
	for right-left > 1 {
		mid := (right + left) / 2
		if isOK(a, mid, key) { // このindexは条件を満たす -> rightを狭める
			right = mid
		} else { // このindexは条件を満たさない -> leftを狭める
			left = mid
		}
	}
	return right
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
