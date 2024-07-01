package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func main() {
	x := nextInt()
	if 30 <= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func nextInt() int {
	i, err := strconv.Atoi(nextLine())
	pnc(err)
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
