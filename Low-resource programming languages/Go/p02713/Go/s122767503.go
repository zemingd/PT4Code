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
	K := nextInt()
	sum := 0
	for i := 1; i <= K; i++ {
		for j := 1; j <= K; j++ {
			for k := 1; k <= K; k++ {
				sum += gcd((gcd(i, j)), k)
			}
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

func gcd(x, y int) int {
	for y != 0 {
		x, y = y, x%y
	}
	return x
}
