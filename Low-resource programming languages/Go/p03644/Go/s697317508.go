package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	ans := 1
	cnt := 0
	for i := 1; i < n+1; i++ {
		j := i
		t := 0
		for j > 0 {
			if j%2 != 0 {
				break
			}
			j /= 2
			t++
		}
		if t > cnt {
			cnt = t
			ans = i
		}
	}
	fmt.Println(ans)
}
