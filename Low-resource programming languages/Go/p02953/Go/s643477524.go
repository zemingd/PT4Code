package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	H := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		H[i], _ = strconv.Atoi(sc.Text())
	}

	canChange := true
	for i := 1; i < N; i++ {
		if canChange && H[i-1] > H[i]+1 {
			fmt.Println("No")
			return
		} else if !canChange && H[i-1] > H[i] {
			fmt.Println("No")
			return
		} else if H[i-1] >= H[i] {
			canChange = false
		} else {
			canChange = true
		}
	}
	fmt.Println("Yes")
}
