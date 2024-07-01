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
	var N int
	N = nextInt()
	sum := 0
	for i := 1; i <= N; i++ {
		if i%3 == 0 || i%5 == 0 {
			continue
		} else {
			sum += i
		}
	}
	fmt.Println(sum)
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
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
