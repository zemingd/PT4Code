package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var H, N int
	x := 0

	fmt.Scanf("%d %d", &H, &N)

	for i := 0; i < N; i++ {
		x += nextInt()
	}

	if H <= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
