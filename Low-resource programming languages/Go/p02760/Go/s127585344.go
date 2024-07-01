package main

import (
	"bufio"
	"fmt"
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

func main() {
	sc.Split(bufio.ScanWords)
	bingo := make([]int, 9)
	exist := make([]bool, 9)
	res := "No"
	for i := 0; i < 9; i++ {
		bingo[i] = nextInt()
	}

	n := nextInt()
	for i := 0; i < n; i++ {
		num := nextInt()
		for j := 0; j < 9; j++ {
			if bingo[j] == num {
				exist[j] = true
				continue
			}
		}
	}

	for i := 0; i < 3; i++ {
		//横[0,1,2][3,4,5][6,7,8]
		if exist[i] && exist[i*3+1] && exist[i*3+2] {
			res = "Yes"
		}
		//縦[0,3,6][1,4,7][2,5,8]
		if exist[i] && exist[i+3] && exist[i+6] {
			res = "Yes"
		}
	}
	//斜[0,4,8][2,4,6]
	if exist[0] && exist[4] && exist[8] || exist[2] && exist[4] && exist[6] {
		res = "Yes"
	}
	fmt.Println(res)
}