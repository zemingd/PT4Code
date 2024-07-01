package main

import (
	"bufio"
	"fmt"
	"math"
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

type plan struct {
	t, x, y int
}

func intAbs(x int) int {
	return int(math.Abs(float64(x)))
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	L := make([]plan, N+1)
	for i := 1; i <= N; i++ {
		L[i].t, L[i].x, L[i].y = scanInt(), scanInt(), scanInt()
	}

	for i := 1; i <= N; i++ {
		dist := intAbs(L[i].x-L[i-1].x) + intAbs(L[i].y-L[i-1].y)
		time := L[i].t - L[i-1].t
		if time < dist {
			fmt.Println("No")
			return
		}
		if (time-dist)%2 == 1 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
