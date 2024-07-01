package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt(sc)
	}
	//fmt.Println("n", n, "h", h)
	ok := true
	for j := n - 1; j > 0; j-- { // 右から順に見ていく
		//fmt.Printf("h[%d] %d\n", j, h[j])
		if h[j-1] > h[j] { // 左側のマスの方が大きい
			// fmt.Printf("d01\n")
			if h[j-1] == h[j]+1 { // 左側のマスがちょうど1だけ大きい
				//fmt.Printf("d02\n")
				h[j-1]--
			} else {
				//fmt.Println("d03 break")
				ok = false
				break
			}
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
