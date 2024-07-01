package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	var a, b, c float64
	a = float64(nextInt64())
	b = float64(nextInt64())
	c = float64(nextInt64())

	if c-a-b > 0 && 4*a*b < (c-a-b)*(c-a-b) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")

	}

}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextInt64() int64 {
	stdin.Scan()
	i, err := strconv.ParseInt(stdin.Text(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	stdin.Scan()
	i := stdin.Text()
	// if err != nil {
	// 	panic(err)
	// }
	return i
}
