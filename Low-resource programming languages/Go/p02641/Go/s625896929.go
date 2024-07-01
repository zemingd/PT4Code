package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

// 1行読み込み
func nextLine() string {
	sc.Scan()
	return sc.Text()
}

// 読み込みをint型へキャスト
func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if(err != nil) {
		panic(err)
	}
	return num
}

// 読み込みをfloat型へキャスト
func nextFloat() float64 {
	sc.Scan()
	num, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	// scannerの挙動を改行区切り → 空白区切りに変更
	sc.Split(bufio.ScanWords)
	x := nextInt()
	n := nextInt()
	p_list := make([]int, 0, n)
	if n == 0 {
		fmt.Println(x)
		return
	}
	for i := 0; i < n; i++ {
		p_list = append(p_list, nextInt())
	}
	p_check := make([]int, 200, 200)
	// p_check[x - 1]++
	for _, i := range p_list {
		p_check[i - 1]++
	}

	x_next := x
	x_befo := x
	for i := x; i < 1000; i++ {
		if p_check[i - 1] == 0 {
			x_next = i
			break
		}
	}
	for i := x; i > -1000; i-- {
		if i == 0 {
			x_befo = i
			break
		}
		if p_check[i - 1] == 0 {
			x_befo = i
			break
		}
	}
	next_abs := int(math.Abs(float64(x_next - x)))
	befo_abs := int(math.Abs(float64(x_befo - x)))

	if next_abs == befo_abs {
		fmt.Println(x_befo)
	} else if next_abs > befo_abs {
		fmt.Println(x_befo)
	} else {
		fmt.Println(x_next)
	}
}