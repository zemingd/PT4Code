package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	res := make([]int, 0, n)

	for i := 0; i < n; i++ {
		sc.Scan()
		v, _ := strconv.Atoi(sc.Text())

		var ok bool

		for i, r := range res {
			if r >= v {
				continue
			}
			res[i] = v
			ok = true
			break
		}

		if !ok {
			res = append(res, v)
		}
	}

	fmt.Println(len(res))
}
