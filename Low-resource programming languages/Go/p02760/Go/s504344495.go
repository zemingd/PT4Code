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

func judge(bingo map[int]bool) bool {
	if _, ok1 := bingo[1]; ok1 {
		// 1行目
		if _, ok2 := bingo[2]; ok2 {
			if _, ok3 := bingo[3]; ok3 {
				return true
			}
		}
		// 1列目
		if _, ok2 := bingo[4]; ok2 {
			if _, ok3 := bingo[7]; ok3 {
				return true
			}
		}
		// 右下斜め
		if _, ok2 := bingo[5]; ok2 {
			if _, ok3 := bingo[9]; ok3 {
				return true
			}
		}
		
	}
	// 2列目
	if _, ok1 := bingo[2]; ok1 {
		if _, ok2 := bingo[5]; ok2 {
			if _, ok3 := bingo[8]; ok3 {
				return true
			}
		}
	}
	// 3列目
	if _, ok1 := bingo[3]; ok1 {
		if _, ok2 := bingo[6]; ok2 {
			if _, ok3 := bingo[9]; ok3 {
				return true
			}
		}
		if _, ok2 := bingo[5]; ok2 {
			if _, ok3 := bingo[7]; ok3 {
				return true
			}
		}
	}
	if _, ok1 := bingo[4]; ok1 {
		if _, ok2 := bingo[5]; ok2 {
			if _, ok3 := bingo[6]; ok3 {
				return true
			}
		}
	}
	if _, ok1 := bingo[7]; ok1 {
		if _, ok2 := bingo[8]; ok2 {
			if _, ok3 := bingo[9]; ok3 {
				return true
			}
		}
	}
	return false
}

func main() {
	bingo := make(map[int]int, 9)
	sc.Split(bufio.ScanWords)

	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			 bingo[nextInt()] = i * 3 + j + 1
		}
	}

	n := nextInt()
	bingo_num := make(map[int]bool, 9)
	for i := 0; i< n; i++ {
		v := nextInt()
		if b, ok := bingo[v]; ok {
			bingo_num[b] = true
		}
	}
	if judge(bingo_num) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}