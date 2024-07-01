package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	v := make([]float64, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		v[i], _ = strconv.ParseFloat(sc.Text(), 64)
	}

	sort.Float64s(v)
	sum := v[0]
	for i := 1; i < N; i++ {
		sum = (sum + v[i]) / 2
	}

	fmt.Println(sum)
}
