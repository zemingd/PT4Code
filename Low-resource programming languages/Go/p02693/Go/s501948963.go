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
	k := nextInt()
	a := nextInt()
	b := nextInt()

	if k == 1 {
		fmt.Println("OK")
		return
	}
	if a%k == 0 {
		fmt.Println("OK")
		return
	}
	if b%k == 0 {
		fmt.Println("OK")
		return
	}

	for i := k; i < 1000; i += k {
		if (a < i) && (i < b) {
			fmt.Println("OK")
			return
		}

	}

	fmt.Println("NG")

}
