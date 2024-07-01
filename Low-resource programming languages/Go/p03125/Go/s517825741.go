package main

import (
	"fmt"
	"os"
	"strconv"
	"bufio"
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
	a := nextInt()
	b := nextInt()
	var c int
	if(b % a == 0){
		c = b + a
	} else {
		c = b - a
	}
	fmt.Printf("%d\n", c)
}
