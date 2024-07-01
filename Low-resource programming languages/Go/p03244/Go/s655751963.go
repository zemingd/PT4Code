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
	// 最も出現回数の多い数字を探す
	m0k, m0max, m0side, m2max, m2side := 0, 0, 0, 0, 0
	for i := 0; i < len(m); i++ {
		for k, v := range m[i] {
			if v > m0max {
				m0max = v
				m0k = k
				m0side = i
			}
		}
	}
	// 反対側で、m0k以外で最も出現回数の多い数を探す
	if m0side == 0 {
		m2side = 1
	} else {
		m2side = 0
	}
	for k, v := range m[m2side] {
		if k != m0k {
			if v > m2max {
				m2max = v
			}
		}
	}
	fmt.Println(n/2 - m0max + n/2 - m2max)
}
