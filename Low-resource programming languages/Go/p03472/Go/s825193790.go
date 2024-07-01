package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type sword struct {
	a, b int
}

type swordList []sword

func (a swordList) Len() int           { return len(a) }
func (a swordList) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a swordList) Less(i, j int) bool { return a[i].b > a[j].b }

func main() {
	sc.Split(bufio.ScanWords)

	N, H := scanInt(), scanInt()
	L := make(swordList, N)
	for i := 0; i < N; i++ {
		L[i].a, L[i].b = scanInt(), scanInt()
	}
	sort.Sort(L)

	amax := 0
	for _, l := range L {
		if l.a >= amax {
			amax = l.a
		}
	}

	ans := 0
	for i := 0; i < N; i++ {
		if L[i].b >= amax {
			H -= L[i].b
			ans++
		}
		if H <= 0 {
			break
		}
	}
	if H > 0 {
		p, r := H/amax, H%amax
		ans += p
		if r > 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
