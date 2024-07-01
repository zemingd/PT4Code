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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	r := nextInt()
	g := nextInt()
	b := nextInt()

	if (r*100+g*10+b)%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
