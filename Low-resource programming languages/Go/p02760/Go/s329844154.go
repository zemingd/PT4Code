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

	a := make([]int, 3*3)
	for i := 0; i < 3*3; i++ {
		a[i] = nextInt()
	}
	// 0 1 2
	// 3 4 5
	// 6 7 8

	n := nextInt()
	b := make([]int, n)

	fmt.Println(a, n, b)
	for i := 0; i < n; i++ {
		b[i] = nextInt()

		for j, aa := range a {
			if b[i] == aa {
				a[j] = 0
			}
		}

	}

	// 横
	if a[0] == 0 && a[1] == 0 && a[2] == 0 {
		fmt.Println("Yes")
		return
	}
	if a[3] == 0 && a[4] == 0 && a[5] == 0 {
		fmt.Println("Yes")
		return
	}
	if a[6] == 0 && a[7] == 0 && a[8] == 0 {
		fmt.Println("Yes")
		return
	}

	// 縦
	if a[0] == 0 && a[3] == 0 && a[6] == 0 {
		fmt.Println("Yes")
		return
	}
	if a[1] == 0 && a[4] == 0 && a[7] == 0 {
		fmt.Println("Yes")
		return
	}
	if a[2] == 0 && a[5] == 0 && a[8] == 0 {
		fmt.Println("Yes")
		return
	}
	// 斜め
	if a[0] == 0 && a[4] == 0 && a[8] == 0 {
		fmt.Println("Yes")
		return
	}
	if a[2] == 0 && a[4] == 0 && a[6] == 0 {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
