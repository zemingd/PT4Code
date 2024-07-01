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
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	sc.Scan()
	numRunes := []rune(sc.Text())

	rem := 0
	var pre rune
	for i := 0; i < num; i++ {
		if numRunes[i] != pre {
			rem++
			pre = numRunes[i]
		}
	}
	fmt.Println(rem)
}