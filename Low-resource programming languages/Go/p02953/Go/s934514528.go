package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	H := make([]int, N)
	for i := 0; i < N; i++ {
		H[i] = scanInt()
	}

	flg := true
	for i := 0; i < N-1; i++ {
		if diff := H[i+1] - H[i]; diff > 0 {
			H[i+1]--
		} else if diff < 0 {
			flg = false
			break
		}
	}

	if flg {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
