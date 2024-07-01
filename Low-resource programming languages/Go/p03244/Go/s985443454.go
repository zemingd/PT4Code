package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getkeys(m map[int]int) (m1k, m2k int) {
	for k, v := range m {
		if v > m1k {
			m1k = k
		} else if v > m2k {
			m2k = k
		}
	}
	return m1k, m2k
}
func check(a []int, m0v, m2v int) (r int) {
	for i := 0; i < len(a); i++ {
		if i%2 == 0 && a[i] != m0v {
			r++
		} else if i%2 == 1 && a[i] != m2v {
			r++
		}
	}
	return r
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	m := make([]map[int]int, 2)
	m[0] = make(map[int]int, 0)
	m[1] = make(map[int]int, 0)
	for j := 0; j < n; j++ {
		if j%2 == 0 {
			m[0][a[j]]++
		} else {
			m[1][a[j]]++
		}
	}
	m0k1, m0k2 := getkeys(m[0])
	m2k1, m2k2 := getkeys(m[1])
	var ans int
	if m0k1 != m2k1 {
		ans = check(a, m0k1, m2k1)
	} else {
		// m0をm0k1, m2をm2k2にした場合と, m0をm0k2, m2をm2k1にした場合の小さい方をとる
		ans = min(check(a, m0k1, m2k2), check(a, m0k2, m2k1))
	}
	fmt.Println(ans)
}
func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}
