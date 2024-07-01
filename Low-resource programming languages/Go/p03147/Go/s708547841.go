package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N, H := nextInt(), []int{}
	for i := 0; i < N; i++ {
		H = append(H, nextInt())
	}

	fmt.Printf("%d\n", ABC116C(N, H))
}

// ABC116C ...
func ABC116C(N int, H []int) int {
	res, active := 0, 0

	for i := 0; i < N; i++ {
		if active >= H[i] {
			active = H[i]
		} else {
			res += H[i] - active
			active = H[i]
		}
    }
	return res
}
