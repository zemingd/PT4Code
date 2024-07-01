package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n int
	fmt.Scan(&n)

	ali := make([]int, n, n)

	sc.Split(bufio.ScanWords)

	for i := 0; i < n; i++ {
		ali[i] = nextInt()
	}

	bli := make([]int, n, n)

	for i := 0; i < n; i++ {
		bli[i] = nextInt()
	}

	cli := make([]int, n-1, n-1)

	for i := 0; i < n-1; i++ {
		cli[i] = nextInt()
	}

	count := sum(bli)

	tmpA := ali[0]
	for i := 0; i < n; i++ {
		if ali[i] == tmpA+1 {
			count += cli[ali[i]-2]
		}
		tmpA = ali[i]
	}

	fmt.Println(count)
}

func sum(a []int) int {
	s := 0
	for i := 0; i < len(a); i++ {
		s += a[i]
	}
	return s
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
