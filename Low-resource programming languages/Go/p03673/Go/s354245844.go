package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	B := make([]int, N)
	for i := 0; i < N; i++ {
		a := scanInt()
		if N%2 == 0 {
			if i%2 == 0 {
				B[N/2+(i+1)/2] = a
			} else {
				B[N/2-(i+1)/2] = a
			}
		} else {
			if i%2 == 0 {
				B[N/2-(i+1)/2] = a
			} else {
				B[N/2+(i+1)/2] = a
			}
		}
	}

	for _, b := range B {
		fmt.Printf("%d ", b)
	}
	fmt.Printf("\n")
}
