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
	if n > 81 {
		fmt.Println("No")
		return
	} else {
		for i := 1; i <= 9; i++ {
			a := n / i
			d := n % i
			if d == 0 && a < 10 {
				fmt.Println("Yes")
				return
			}
		}
		fmt.Println("No")
	}
}
