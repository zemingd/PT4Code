package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	H, N, sum int
	a         []int
	line      string
	word      string
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	H, _ = strconv.Atoi(scanner.Text())
	scanner.Scan()
	N, _ = strconv.Atoi(scanner.Text())
	a = make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		a[i], _ = strconv.Atoi(scanner.Text())
	}
	for _, v := range a {
		sum += v
	}
	if H > sum {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}