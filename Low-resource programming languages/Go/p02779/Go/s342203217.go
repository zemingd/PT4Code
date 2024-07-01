package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	m := make(map[int]int, 0)
	for i := 0; i < N; i++ {
		m[nextInt(sc)]++
	}
	if len(m) == N {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
