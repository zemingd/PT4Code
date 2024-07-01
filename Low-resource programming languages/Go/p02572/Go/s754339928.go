package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

const MOD = 1e9 + 7

func main() {
	N := nextInt()
	IS := make([]int, N)
	SUM := make([]int, N)
	IS[0] = nextInt()
	SUM[0] = IS[0]
	for i := 1; i < N; i++ {
		IS[i] = nextInt()
		SUM[i] = SUM[i-1] + IS[i]
	}
	var ANS int
	for i := 0; i < N; i++ {
		ANS = (ANS + (IS[i] * (SUM[N-1] - SUM[i]))) % MOD
	}
	fmt.Println(ANS % MOD)
}
