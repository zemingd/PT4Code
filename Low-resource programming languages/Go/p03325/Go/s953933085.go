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
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = nextInt()
	}
	ans := 0
	for i := 0; i < N; i++ {

		for a[i]%2 == 0 {
			ans++
			a[i] /= 2
		}

	}

	fmt.Println(ans)
}
