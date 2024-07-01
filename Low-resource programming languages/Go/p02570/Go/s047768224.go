package main

import (
	"fmt"
	"os"
	"bufio"
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
	d := nextInt()
	t := nextInt()
	s := nextInt()

	if s*t >= d {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
