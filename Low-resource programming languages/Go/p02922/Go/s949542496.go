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
	a := nextInt()
	b := nextInt()

	if (a >= b){
		fmt.Println(1)
		return
	} else {
		c := b - a
		d := c / (a-1)
		e := c % (a-1)
		if (e == 0) {
			fmt.Println(d+1)
		} else {
			fmt.Println(d+2)
		}
	}
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
