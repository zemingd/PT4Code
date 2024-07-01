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
	K := nextInt()
	S := nextInt()
	W := nextInt()

	dev := W / K
	if dev*K >= S {
		fmt.Print("OK")
	} else {
		fmt.Print("NG")
	}
}
