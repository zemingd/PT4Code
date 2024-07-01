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

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	a := make([]int, N, N)
	for i := 0; i < N; i++ {
		a[i] = nextInt()
	}
	var ans int64 = 0
	maxi := a[0]
	for i := 1; i < N; i++ {
		if a[i] < maxi {
			ans += int64(maxi - a[i])
		} else {
			maxi = a[i]
		}
	}
	fmt.Println(ans)
}
