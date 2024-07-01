package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	d, _ := strconv.Atoi(Scanner())
	g, _ := strconv.Atoi(Scanner())
	p := make([]int, d)
	c := make([]int, d)
	for i := 0; i < d; i++ {
		p[i], _ = strconv.Atoi(Scanner())
		c[i], _ = strconv.Atoi(Scanner())
	}
	all := make([][]bool, 0)
	list := make([]bool, 0)
	all = perm(d, list, all)
	ans := 100000000
	for _, i := range all {
		s := 0
		count := 0
		for j, b := range i {
			if b {
				s += p[j]*100*(j+1) + c[j]
				count += p[j]
			}
		}
		if s >= g {
			if count < ans {
				ans = count
			}
			continue
		}
		for j := d - 1; j >= 0; j-- {
			if !i[j] {
				point := (j + 1) * 100
				q := smaller(g-s, p[j]*point)
				m := q / point
				if q%point != 0 {
					m++
				}
				s += m * point
				count += m
				if m == p[j] {
					s += c[j]
				}
				if s >= g {
					if count < ans {
						ans = count
					}
					break
				}
			}
		}
	}
	fmt.Println(ans)
}
func perm(n int, list []bool, ret [][]bool) [][]bool {
	if len(list) == n {
		x := make([]bool, n)
		copy(x, list)
		ret = append(ret, x)
		return ret
	} else {
		ret = perm(n, append(list, true), ret)
		ret = perm(n, append(list, false), ret)
	}
	return ret
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
