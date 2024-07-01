package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const MOD = 1000000007

func next() string {
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

	a := make([]int, 3)
	for i := 0; i < 3; i++ {
		a[i] = nextInt()
	}

	sort.Ints(a)
	fmt.Println(a[2] - a[0])
}