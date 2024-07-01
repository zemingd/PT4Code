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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()

	count := 1
	crash := 0

	ans := func() int {
		for i := 0; i < N; i++ {
			a := nextInt()
			if a == count {
				count++
			} else {
				crash++
			}
		}
		if count == 1 {
			return -1
		}
		return crash
	}()

	fmt.Println(ans)
}
