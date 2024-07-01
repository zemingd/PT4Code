package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"sort"
)

type action struct {
	b int
	c int
}

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	n := scanInt()
	m := scanInt()

	a := make([]int, n)
	for i:=0; i<n; i++ {
		a[i] = scanInt()
	}
	sort.Ints(a)

	act := make([]action,m)

	for i:=0; i<m; i++ {
		act[i].b, act[i].c = scanInt(), scanInt()
	}

	sort.Slice(act, func(i,j int) bool {
		return act[i].c > act[j].c
	})

	ans := 0

	for i:=0; i<n; i++ {
		ans += a[i]
	}

	p := 0
	b := act[p].b

	for i:=0; i<n; i++ {
		if act[p].c-a[i]<=0 {
			break
		}
		ans += act[p].c-a[i]
		b--
		if b == 0 {
			p++
			if p == m {
				break
			}
			b = act[p].b
		}
	}

	fmt.Println(ans)
}
