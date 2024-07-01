package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()

	h := make([]int, n)
	for i := 0; i < k; i++ {
		d := nextInt()
		for j := 0; j < d; j++ {
			aij := nextInt()
			h[aij-1]++
		}
	}

	var ret int
	for _, v := range h {
		if v == 0 {
			ret++
		}
	}
	fmt.Println(ret)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
