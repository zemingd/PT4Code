package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type store struct {
	price int
	n     int
}

type stores []store

func (a stores) Len() int {
	return len(a)
}

func (a stores) Less(i, j int) bool {
	return a[i].price < a[j].price
}

func (a stores) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make(stores, n)
	for i := range a {
		sc.Scan()
		a[i].price, _ = strconv.Atoi(sc.Text())
		sc.Scan()
		a[i].n, _ = strconv.Atoi(sc.Text())
	}
	sort.Sort(a)
	ans := int64(0)
	rem := m
	for _, e := range a {
		if rem == 0 {
			break
		}
		i := min(rem, e.n)
		ans += int64(i * e.price)
		rem -= i
	}
	fmt.Println(ans)
}
