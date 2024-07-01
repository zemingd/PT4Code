package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	k := readInt()

	ans := make([]int, 0)
	i := 1
	for {
		d := i
		prev := d % 10
		ok := true
		for d > 0 {
			amari := d % 10
			if abs(amari-prev) > 1 {
				ok = false
				break
			}
			prev = amari
			d /= 10
		}
		if ok {
			ans = append(ans, i)
		}
		if len(ans) == k {
			break
		}
		i++
	}
	fmt.Println(ans[k-1])
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
