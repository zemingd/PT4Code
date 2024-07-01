package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	X := scanInt()
	if X >= 30 {
		fmt.Println("Yes")
	} else {
		fmt.Printf("No")
	}
}