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

func main() {
	sc.Split(bufio.ScanWords)
	m := nextInt()
	m = nextInt()
	digitMap := make(map[int]int)
	flag := true
	for i := 0; i < m; i++ {
		digit := nextInt()
		num := nextInt()
		if digit == 1 && num == 0 {
			fmt.Println(-1)
			flag = false
			break
		}
		tmp, exist := digitMap[digit]
		if exist && tmp != num {
			fmt.Println(-1)
			flag = false
			break
		}
		if !exist {
			digitMap[digit] = num
		}
	}
	if flag {
		result := digitMap[1]*100 + digitMap[2]*10 + digitMap[3]
		fmt.Println(result)
	}
}