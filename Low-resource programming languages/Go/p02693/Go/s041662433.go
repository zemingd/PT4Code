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
	if (b - a) >= k {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}

}
