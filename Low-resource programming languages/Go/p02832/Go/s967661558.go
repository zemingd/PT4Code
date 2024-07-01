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
	var N int = nextInt()
	ai := map[int]int{}
	var n int = 0
	for count := 1; count <= N; count++ {
		n = nextInt()
		if n == 0 {
			break
		}
		ai[count] = n
	}
	fmt.Println(ai)
	buf := 0
	var ans int = 0
	boolans := false
	for i := 1; i <= N; i++ {
		for j := buf; j <= N; j++ {
			if ai[j] == i {
				ans += j - 1 - buf
				buf = j
				boolans = true
				break
			} else {
				continue
			}
		}
		if ans == 0 && boolans == false {
			ans = -1
			break
		}
	}
	fmt.Println(ans)
}
