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
	a := nextInt() // A= +1
	b := nextInt() // B=  0
	c := nextInt() // C= -1
	k := nextInt()

	if a+b >= k {
		if a >= k {
			fmt.Println(k)
		} else {
			fmt.Println(a)
		}

	} else {
		fmt.Println(a - (k - a - b))
	}
	a = c

}
