package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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
	N, M := nextInt(), nextInt()

	digits := make(map[int]int, M)
	for i := 1; i <= M; i++ {
		digits[i] = -1
	}

	isExist := true
	for i := 0; i < M; i++ {
		s, c := nextInt(), nextInt()
		if digits[s] != -1 && digits[s] != c || i == 0 && c == 0 {
			isExist = false
			break
		}
		digits[s] = c
	}

	ans := 0
	if isExist {
		for i, v := range digits {
			if v == -1 {
				v = 0
			}
			ans += int(math.Pow(10, float64(N-i))) * v
		}
		fmt.Println(ans)
	} else {
		fmt.Println(-1)
	}
}
