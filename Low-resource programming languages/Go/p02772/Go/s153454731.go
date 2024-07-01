package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var nextReader func() string

func newScanner() func() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 1024), int(1e11))
	sc.Split(bufio.ScanWords)
	return func() string {
		sc.Scan()
		return sc.Text()
	}
}

func nextString() string { return nextReader() }

func nextInt() int { n, _ := strconv.Atoi(nextReader()); return n }

func nextInts(size int) []int {
	ns := make([]int, size)
	for i := 0; i < size; i++ {
		ns[i] = nextInt()
	}
	return ns
}

func main() {
	nextReader = newScanner()
	N := nextInt()
	Ai := nextInts(N)
	for _, v := range Ai {
		if v%2 == 0 {
			if v%3 != 0 && v%5 != 0 {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
}
