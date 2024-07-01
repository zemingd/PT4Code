package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(Scanner())
	s := Scanner()
	ans := 0
	r := make([]int, 0)
	g := make([]int, 0)
	b := make([]int, 0)
	for i := 0; i < n; i++ {
		if string(s[i]) == "R" {
			r = append(r, i)
		} else if string(s[i]) == "G" {
			g = append(g, i)
		} else if string(s[i]) == "B" {
			b = append(b, i)
		}
	}
	for i := 0; i < len(r); i++ {
		for j := 0; j < len(g); j++ {
			x, y := r[i], g[j]
			if x < y {
				idx := sort.SearchInts(b, y)
				ans += len(b) - idx
				if 2*y-x < n {
					if string(s[2*y-x]) == "B" {
						ans -= 1
					}
				}
			}
		}
		for j := 0; j < len(b); j++ {
			x, y := r[i], b[j]
			if x < y {
				idx := sort.SearchInts(g, y)
				ans += len(g) - idx
				if 2*y-x < n {
					if string(s[2*y-x]) == "G" {
						ans -= 1
					}
				}
			}
		}
	}
	for i := 0; i < len(g); i++ {
		for j := 0; j < len(r); j++ {
			x, y := g[i], r[j]
			if x < y {
				idx := sort.SearchInts(b, y)
				ans += len(b) - idx
				if 2*y-x < n {
					if string(s[2*y-x]) == "B" {
						ans -= 1
					}
				}
			}
		}
		for j := 0; j < len(b); j++ {
			x, y := g[i], b[j]
			if x < y {
				idx := sort.SearchInts(r, y)
				ans += len(r) - idx
				if 2*y-x < n {
					if string(s[2*y-x]) == "R" {
						ans -= 1
					}
				}
			}
		}
	}
	for i := 0; i < len(b); i++ {
		for j := 0; j < len(g); j++ {
			x, y := b[i], g[j]
			if x < y {
				idx := sort.SearchInts(r, y)
				ans += len(r) - idx
				if 2*y-x < n {
					if string(s[2*y-x]) == "R" {
						ans -= 1
					}
				}
			}
		}
		for j := 0; j < len(r); j++ {
			x, y := b[i], r[j]
			if x < y {
				idx := sort.SearchInts(g, y)
				ans += len(g) - idx
				if 2*y-x < n {
					if string(s[2*y-x]) == "G" {
						ans -= 1
					}
				}
			}
		}
	}
	fmt.Println(ans)
}
