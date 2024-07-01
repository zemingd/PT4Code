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
	n, m := nextInt(), nextInt()

	num := make(map[int]int, n)
	for i := 0; i<m; i++ {
		s, c := nextInt(), nextInt()
		if v, ok := num[s]; ok {
			if v != c {
				fmt.Println("-1")
				return
			}
		}
		num[s] = c
	}

	if v, ok := num[n]; ok {
		if v == 0 && len(num) == 1{
			fmt.Println(0)
			return
		}
	}
	if v, ok := num[1]; ok {
		if v == 0 {
			fmt.Println("-1")
			return
		}
	}

	for i := 1; i<=n; i++ {
		if v, ok := num[i]; ok {
			fmt.Print(v)
			continue
		}


		if i == 1 && n != 1{
			fmt.Print(1)
			continue
		}
		fmt.Print(0)
	}
}