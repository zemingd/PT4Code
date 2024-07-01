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
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()

	sunu := make([]int, n)

	for i := 1; i < k+1; i++ {
		d := nextInt()
		for j := 0; j < d; j++ {
			tmp := nextInt()
			sunu[tmp-1] += i
		}
	}

	count := 0
	for _, v := range sunu {
		if v == 0 {
			count++
		}
	}
	fmt.Println(count)
}
