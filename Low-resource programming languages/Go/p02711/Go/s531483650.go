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
	n := nextInt()
	n1 := n / 100
	n2 := n % 100 / 10
	n3 := n % 100 % 10

	if n1 == 7 {
		fmt.Println("Yes")
		return
	}
	if n2 == 7 {
		fmt.Println("Yes")
		return
	}
	if n3 == 7 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
