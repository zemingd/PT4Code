package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	bf := make([]byte, 1024*1024)
	sc.Buffer(bf, 10*1024*1024)
	sc.Split(bufio.ScanWords)

	in := func() int {
		sc.Scan()
		i, _ := strconv.Atoi(sc.Text())
		return i
	}

	n, x, t := in(), in(), in()

	q := n / x
	r := n % x

	time := q * t

	if r != 0 {
		time += t
	}

	fmt.Println(time)
}
