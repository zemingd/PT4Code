package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type sugarWater struct {
	water int
	sugar int
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 0), 1000000001*3)
	sc.Split(bufio.ScanWords)
	a, b, c, d, e, f := nextInt(), nextInt(), nextInt(), nextInt(), nextInt(), nextInt()

	sugarWaterArray := make([]sugarWater, 0)
	for ai := 0; ai*a*100 <= f; ai++ {
		sugarWaterArray = append(sugarWaterArray, sugarWater{ai * a * 100, 0})
	}

	l := len(sugarWaterArray)
	for li := 0; li < l; li++ {
		sw := sugarWaterArray[0]
		sugarWaterArray = sugarWaterArray[1:]
		for bi := 0; bi*b*100+sw.water <= f; bi++ {
			sugarWaterArray = append(sugarWaterArray, sugarWater{bi*b*100 + sw.water, 0})
		}
	}

	l = len(sugarWaterArray)
	for li := 0; li < l; li++ {
		sw := sugarWaterArray[0]
		sugarWaterArray = sugarWaterArray[1:]
		if sw.water == 0 {
			continue
		}
		for ci := 0; ci*c+sw.water <= f; ci++ {
			sugarWaterArray = append(sugarWaterArray, sugarWater{sw.water, ci * c})
		}
	}

	for swi := range sugarWaterArray {
		maxSugar1 := f - (sugarWaterArray[swi].water + sugarWaterArray[swi].sugar)
		maxSugar2 := (sugarWaterArray[swi].water * e / 100) - sugarWaterArray[swi].sugar
		var maxSugar int
		switch {
		case maxSugar1 < maxSugar2:
			maxSugar = maxSugar1
		default:
			maxSugar = maxSugar2
		}
		switch {
		case maxSugar < 0:
			sugarWaterArray[swi].sugar = 0
		default:
			sugarWaterArray[swi].sugar += (maxSugar / d) * d
		}
	}

	ans := sugarWaterArray[0]
	for _, sw := range sugarWaterArray {
		// sw.sugar/sw.water > ans.sugar/ans.water
		if sw.sugar*ans.water > ans.sugar*sw.water {
			ans = sw
		}
	}
	fmt.Println(ans.water+ans.sugar, ans.sugar)
}
