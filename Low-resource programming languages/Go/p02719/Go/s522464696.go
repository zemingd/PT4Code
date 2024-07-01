package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()

	if n > k {
		r := n % k
		diff := (r - k)
		if r < diff*(-1) {
			fmt.Println(r)
			return
		} else {
			fmt.Println(diff * (-1))
			return
		}
	} else {
		diff := (n - k)
		if n < diff*(-1) {
			fmt.Println(n)
			return
		} else {
			fmt.Println(diff * (-1))
			return
		}
	}
}
