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

	k := nextInt()
	x := nextInt()

	for i := -100000; i <= 100000; i++ {
		if (x-k+1 <= i) && (i <= x+k-1) {
			fmt.Printf("%d ", i)
		}

	}

}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
