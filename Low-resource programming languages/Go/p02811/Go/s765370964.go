package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	K := nextInt()
	X := nextInt()
	if K*500 >= X {
		fmt.Println("Yes")
		return
	}
	fmt.Print("No")
}
