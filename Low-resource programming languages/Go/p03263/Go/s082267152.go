package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Coin struct {
	Num        int
	IsSearched bool
}

func main() {
	s := IOInitialize()
	H := Int(s)
	W := Int(s)
	coinMap := scanNums(s, H, W)
	res := []string{}
	cnt := 0
	for i := 1; i <= H; i++ {
		for j := 1; j <= W; j++ {
			coin := coinMap[j][i]
			if coin.Num%2 == 1 {
				if j < W {
					coin.Num--
					coinMap[j+1][i].Num++
					res = append(res, fmt.Sprintf("%d %d %d %d", i, j, i, j+1))
					cnt++
				} else if i < H {
					coin.Num--
					coinMap[j][i+1].Num++
					res = append(res, fmt.Sprintf("%d %d %d %d", i, j, i+1, j))
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
	for _, r := range res {
		fmt.Println(r)
	}

	/*
		cnt := 0
		for i := 1; i <= H; i++ {
			for j := 1; j <= W; j++ {
				coin := coinMap[j][i]
				fmt.Println(coin.Num)
				if coin.Num%2 == 0 {
					cnt++
				}
			}
		}
		fmt.Println("res", cnt)
		if _num%2 == 0 {
			fmt.Println("target", H*W)
		} else {
			fmt.Println("target", H*W-1)
		}
	*/
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func Int(s *bufio.Scanner) int {
	if !s.Scan() {
		panic("scan error")
	}

	value, err := strconv.Atoi(s.Text())
	if err != nil {
		panic("text to int error")
	}
	return value
}

var _num = 0

func scanNums(s *bufio.Scanner, H int, W int) (coinMap map[int]map[int]*Coin) {
	coinMap = map[int]map[int]*Coin{}
	for i := 1; i <= W; i++ {
		coinMap[i] = map[int]*Coin{}
		for j := 1; j <= H; j++ {
			coinMap[i][j] = &Coin{Num: 0, IsSearched: false}
		}
	}

	for i := 1; i <= H; i++ {
		for j := 1; j <= W; j++ {
			num := Int(s)
			_num += num
			coinMap[j][i].Num = num
		}
	}
	return
}
