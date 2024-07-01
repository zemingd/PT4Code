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
	var K, A, B int
	K = nextInt()
	A = nextInt()
	B = nextInt()

	for i := A; i <= B; i++ {
		if i%K == 0 {
			fmt.Println("OK")
			os.Exit(0)
		}
	}
	fmt.Println("NG")
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}