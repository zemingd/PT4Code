package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = nextInt(sc)
	}
	sort.Ints(a)
	for i := 0; i+1 < N; i++ {
		if a[i+1] == a[i] {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}
