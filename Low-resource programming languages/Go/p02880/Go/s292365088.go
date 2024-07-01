package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextStr() string {
	sc.Scan()
	return sc.Text()
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
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 0), 1000000001*3)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	for i := 1; i < 10; i++ {
		if n % i == 0 && n / i < 10 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
