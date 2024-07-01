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

	ns := make([]int, n+1)
	for i := 1; i <= n; i++ {
		ns[i] = nextInt()
	}

	var ret int
	for i := 1; i <= n-1; i++ {
		for j := i + 1; j <= n; j++ {
			if (j - i) == (ns[i] + ns[j]) {
				ret++
			}

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
