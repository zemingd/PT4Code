package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	bf := make([]byte, 1024*1024)
	sc.Buffer(bf, 10*1024*1024)
	sc.Split(bufio.ScanWords)

	in := func() int {
		sc.Scan()
		i, _ := strconv.Atoi(sc.Text())
		return i
	}

	n, k := in(), in()
	a := make([]int, n)

	for i := range a {
		a[i] = in()
	}

	sort.Slice(a, func(i, j int) bool {
		return a[i] < a[j]
	})

	cst := 0
	for i := 0; i < k; i++ {
		cst += a[i]
	}

	fmt.Println(cst)
}
