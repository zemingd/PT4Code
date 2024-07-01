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
	list := make([]int, n)
	for i := 0; i < n; i++ {
		list[i] = nextInt()
		if list[i]%2 == 0 {
			if list[i]%3 == 0 || list[i]%5 == 0 {

			} else {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
	return
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
