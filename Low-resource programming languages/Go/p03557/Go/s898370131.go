package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var N, r int
	wa := make([]int, 100010)
	wc := make([]int, 100010)
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, N)
	b := make([]int, N)
	c := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < N; i++ {
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < N; i++ {
		sc.Scan()
		c[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.IntSlice(c))
	for i := 0; i < N; i++ {
		wa[a[i]]++
		wc[c[i]]++
	}
	for i := 1; i < len(wa); i++ {
		wa[i] += wa[i-1]
		wc[i] += wc[i-1]
	}
	for i := 0; i < N; i++ {
		ta := wa[b[i]-1]
		tc := N - wc[b[i]]
		//fmt.Printf("ta:%d b:%d tc:%d\n", ta, b[i], tc)
		r += ta * tc
	}
	fmt.Println(r)
}
