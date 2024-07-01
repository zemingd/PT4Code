package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	x, y, a, b, c := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()

	p := make([]int, a)
	q := make([]int, b)
	r := make([]int, c)
	for i := range p {
		p[i] = nextInt()
	}
	for i := range q {
		q[i] = nextInt()
	}
	for i := range r {
		r[i] = nextInt()
	}

	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)

	var ans int
	i, j, k := 1, 1, 1
	for x > 0 || y > 0 {
		if p[a-i] >= q[b-j] {
			if a-i < 0 || b-j < 0 {
				continue
			}
			if x > 0 {
				if p[a-i] >= r[c-k] {
					ans += p[a-i]
					x--
					i++
				} else {
					ans += r[c-k]
					x--
					k++
				}
			}
			if y > 0 {
				if q[b-j] >= r[c-k] {
					ans += q[b-j]
					y--
					j++
				} else {
					ans += r[c-k]
					y--
					k++
				}
			}
		} else {
			if a-i < 0 || b-j < 0 {
				continue
			}

			if y > 0 {
				if q[b-j] >= r[c-k] {
					ans += q[b-j]
					y--
					j++
				} else {
					ans += r[c-k]
					y--
					k++
				}
			}
			if x > 0 {
				if p[a-i] >= r[c-k] {
					ans += p[a-i]
					x--
					i++
				} else {
					ans += r[c-k]
					x--
					k++
				}
			}
		}
	}

	fmt.Println(ans)
}
