package main

import (
	"bufio"
	"fmt"
  	"os"
  	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()

	fmt.Printf("%d\n", ABC139D(N))
}

// ABC139D ...
func ABC139D(N int) (res int) {

	for i := 1; i < N; i++ {
		res += i
	}

	return res
}
