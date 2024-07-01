package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()

	for i:= 1; i<=9; i++ {
		if n % i == 0 && n/i >=1 && n / i <= 9 {
			fmt.Printf("Yes")
			return
		}
	}
	fmt.Printf("No")
	return
}
