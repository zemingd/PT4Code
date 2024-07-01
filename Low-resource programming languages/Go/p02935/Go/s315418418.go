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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	v := make([]float64, N)
	for i := 0; i < N; i++ {
		v[i] = float64(scanInt())
	}
	sort.Float64s(v)

	ans := (v[0] + v[1]) / 2
	for i := 2; i < N; i++ {
		ans = (ans + v[i]) / 2
	}
	fmt.Println(ans)
}
