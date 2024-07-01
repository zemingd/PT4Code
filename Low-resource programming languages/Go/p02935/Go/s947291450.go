package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func readf(sc *bufio.Scanner) float64 {
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	v := make([]float64, n)
	for i := range v {
		sc.Scan()
		v[i] = readf(sc)
	}

	max := 0.0
	sort.Float64s(v)
	for i := n - 1; i >= 0; i-- {
		tmp := Alchemy(v)
		if max < tmp {
			max = tmp
		}
	}
	fmt.Println(max)
}

func alchemy(x, y float64) float64 {
	return (x + y) / 2
}

func Alchemy(list []float64) float64 {
	for i := range list {
		if i == len(list)-1 {
			continue
		}
		list[i+1] = alchemy(list[i], list[i+1])
	}
	return list[len(list)-1]
}
