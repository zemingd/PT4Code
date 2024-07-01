package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	cnt := 0
	for i := 1; i < n-1; i++ {
		if (p[i-1] <= p[i] && p[i] <= p[i+1]) || (p[i-1] > p[i] && p[i] > p[i+1]) {
			cnt++
		}
	}

	fmt.Println(cnt)
}
