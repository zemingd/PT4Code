package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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

func absInt(n int) int {
	return int(math.Abs(float64(n)))
}

func getDigit(n int) int {
	return int(math.Pow10(int(math.Log10(float64(n)))))
}

func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	//ルンルン数をkey値として登録
	lunlun := make(map[int]bool)
	for i := 0; i < 10; i++ {
		lunlun[i] = true
	}
	firstDig, secondDig, num := 0, 0, 0
	if k < 10 {
		fmt.Println(k)
	} else {
		count := 9
		for i := 10; ; i++ {
			//iは10の何乗で表される数か
			firstDig = getDigit(i)
			secondDig = firstDig / 10
			//最大桁の値
			num = i / firstDig
			//最大桁と1つ下の桁の値の差の絶対値が1以下＆最大桁を除いた値がルンルン数として登録済みの場合
			if absInt(num-(i-num*firstDig)/secondDig) <= 1 && lunlun[i-num*firstDig] == true {
				lunlun[i] = true
				count++
				//fmt.Println(i, "は", count, "番目のルンルン数")
				//ルンルン数をk個見つけたら終了
				if count == k {
					fmt.Println(i)
					break
				}
			}
		}
	}
}
