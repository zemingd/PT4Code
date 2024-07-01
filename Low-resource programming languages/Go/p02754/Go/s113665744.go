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
	b := nextInt()

	if a == 0 {
		fmt.Println(0)
		return
	}

	if n <= a {
		fmt.Println(a)
		return
	}

	if n <= a+b {
		fmt.Println(a)
		return
	}

	base := a * (n / (a + b))
	amari := n % (a + b)
	if a <= amari {
		amari = a
	}

	fmt.Println(base + amari)
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
