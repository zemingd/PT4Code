package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	ps := make([]int, n)
	for i := range ps {
		sc.Scan()
		ps[i], _ = strconv.Atoi(sc.Text())
		ps[i]--
	}
	cs := make([]int, n)
	for i := range cs {
		sc.Scan()
		cs[i], _ = strconv.Atoi(sc.Text())
	}

	ans := int(-1e10)
	for i := 0; i < n; i++ {
		p := i
		m := make(map[int]int)
		ms := make([]int, 0)
		var mx, pi int
		for {
			if li, ok := m[ps[p]]; ok {
				var lsum int
				for j := li; j < pi; j++ {
					lsum += cs[ms[j]]
				}
				if k <= pi || lsum <= 0 {
					ls := cs[ms[0]]
					mx = ls
					for j := 1; j < min(k, pi); j++ {
						ls += cs[ms[j]]
						mx = max(mx, ls)
					}
				} else {
					ls := cs[ms[0]]
					mx = ls
					for j := 1; j < pi; j++ {
						ls += cs[ms[j]]
						mx = max(mx, ls)
					}

					loop := pi - li
					ls += lsum * ((k - pi) / loop)
					mx = max(mx, ls)

					for j := li; j < li+(k-li)%loop; j++ {
						ls += cs[ms[j]]
						mx = max(mx, ls)
					}
				}
				break
			}
			p = ps[p]
			ms = append(ms, p)
			m[p] = pi
			pi++
		}
		ans = max(ans, mx)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
