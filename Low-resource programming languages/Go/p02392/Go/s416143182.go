package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a, b, c := nextInt(), nextInt(), nextInt()
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

