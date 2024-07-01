package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	v := make([]int, N)
	for i := 0; i < N; i++ {
		v[i] = nextInt()
	}

	sort.Ints(v)

	ave := make([]float64, N)
	ave[0] = float64(v[0])
	for i := 1; i < N; i++ {
		ave[i] = (ave[i-1] + float64(v[i])) / 2
	}

	fmt.Println(ave[len(ave)-1])
}
