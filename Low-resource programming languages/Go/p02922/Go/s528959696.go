package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	A := nextInt()
	B := nextInt()
	if A >= B {
		fmt.Println(1)
	} else {
		fmt.Println(int(math.Ceil(float64(B-A)/float64(A-1) + 1.)))
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
