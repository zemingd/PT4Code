package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var ans int

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(stringLineScan())
	}
	sort.Ints(a)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i], _ = strconv.Atoi(stringLineScan())
	}
	sort.Ints(b)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		c[i], _ = strconv.Atoi(stringLineScan())
	}
	sort.Ints(c)
	aidx := 0
	cidx := 0
	anum := make([]int, n)
	cnum := make([]int, n)
	for i := 0; i < n; i++ {
		for {
			if aidx == n {
				anum[i] = n
				break
			} else if a[aidx] >= b[i] {
				anum[i] = aidx
				break
			} else {
				aidx++
			}
		}
		for {
			if cidx == n {
				cnum[i] = 0
				break
			} else if c[cidx] > b[i] {
				cnum[i] = n - cidx
				break
			} else {
				cidx++
			}
		}
	}
	ans := 0
	for i := 0; i < n; i++ {
		ans += anum[i] * cnum[i]
	}
	fmt.Println(ans)
}
