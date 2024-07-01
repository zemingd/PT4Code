package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()

	var p []int
	for i := 0; i < n; i++ {
		p = append(p, nextInt())
	}

	sort.Ints(p)

	var sum int
	for _, v := range p[:k] {
		sum += v
	}

	fmt.Println(sum)
}
