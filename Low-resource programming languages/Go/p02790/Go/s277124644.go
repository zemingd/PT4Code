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

	a := nextInt()
	b := nextInt()

	if a == b {
		for i := 0; i < a; i++ {
			fmt.Printf("%d", a)
		}
		return
	}
	if a > b {
		for i := 0; i < a; i++ {
			fmt.Printf("%d", b)
		}
	} else {
		for i := 0; i < b; i++ {
			fmt.Printf("%d", a)
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
