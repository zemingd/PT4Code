package main

import (
	"bufio"
	"fmt"
	"strconv"
	"os"
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
	N := nextInt()
	M := nextInt()

	L := 1
	R := N
	for m := 0; m < M; m++ {
		l := nextInt()
		r := nextInt()
		if L < l {
			L = l
		}
		if r < R {
			R = r
		}
	}

	ans := 0
	if L <= R {
		ans = R - L + 1
	}
	fmt.Println(ans)
}