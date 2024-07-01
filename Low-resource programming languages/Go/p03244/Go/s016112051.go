package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

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
	m0 := make(map[int]int, 0)
	m2 := make(map[int]int, 0)
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			m0[a[i]]++
		} else {
			m2[a[i]]++
		}
	}
	ans := 0
	m0k, m0max, m0max2 := 0, 0, 0
	for k, v := range m0 {
		if v > m0max {
			m0max = v
			m0k = k
		} else if v > m0max2 {
			m0max = v
		}
	}
	m2k, m2max, m2max2 := 0, 0, 0
	for k, v := range m2 {
		if v > m2max {
			m2max2 = m2max
			m2max = v
			m2k = k
		} else if v > m2max2 {
			m2max2 = v
		}
	}
	if m0k != m2k {
		ans = n/2 - m0max + n/2 - m2max
	} else {
		if m0max >= m2max {
			ans = n/2 - m0max + n/2 - m2max2
		} else {
			ans = n/2 - m0max2 + n/2 - m2max
		}
	}
	fmt.Println(ans)
}
func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}
