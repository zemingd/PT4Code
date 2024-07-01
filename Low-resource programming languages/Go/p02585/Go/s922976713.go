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
		m := make(map[int]bool)
		ms := make([]int, 0)
		var mx int
		for {
			if _, ok := m[ps[p]]; ok {
				break
			}
			p = ps[p]
			ms = append(ms, p)
			m[p] = true
		}

		loop := len(ms)
		var lsum int
		for j := range ms {
			lsum += cs[ms[j]]
		}
		if k < loop || lsum < 0 {
			ls := cs[ms[0]]
			mx = ls
			//fmt.Println("ls1:", ls)
			for j := 1; j < min(k, loop); j++ {
				ls += cs[ms[j]]
				//fmt.Println("ls2:", ls)
				mx = max(mx, ls)
			}
		} else {
			ls := lsum * (k / loop)
			//fmt.Println("lsum, k,pi,loop:", lsum, k, pi, loop)
			mx = max(mx, ls)
			//fmt.Println("ls4:", ls)

			for j := 0; j < k%loop; j++ {
				ls += cs[ms[j]]
				mx = max(mx, ls)
				//fmt.Println("ls5:", ls)
			}
		}
		ans = max(ans, mx)
		//fmt.Println("i,mx:", i, mx)
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
