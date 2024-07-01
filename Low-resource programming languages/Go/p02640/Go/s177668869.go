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
	a := nextInt()
	turu := 0

	for turu = 0; turu <= n; turu++ {

		if turu*2+(n-turu)*4 == a {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
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
