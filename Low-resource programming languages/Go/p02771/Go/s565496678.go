package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	a, b, c := nextInt(), nextInt(), nextInt()
	if (a == b && a != c) || (a == c && a != b) ||(b == c && b != a) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
