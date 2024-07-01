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

	if b <= a {
		fmt.Println(1)
		return
	}

	for i := 1; i <= 20; i++ {
		if (a-1)*i+a >= b {
			fmt.Println(i + 1)
			return
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
