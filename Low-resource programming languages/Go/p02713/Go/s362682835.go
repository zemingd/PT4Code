package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
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

func gcd(a, b int) int {
	var rem int
	if a < b {
		a, b = b, a
	}
	for {
		rem = a % b
		if rem == 0 {
			break
		}
		a = b
		b = rem
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	sum, temp := 0, 0
	for l := 1; l <= k; l++ {
		for m := 1; m <= k; m++ {
			temp = gcd(l, m)
			for n := 1; n <= k; n++ {
				sum += gcd(temp, n)
			}
		}
	}
	fmt.Println(sum)
}
