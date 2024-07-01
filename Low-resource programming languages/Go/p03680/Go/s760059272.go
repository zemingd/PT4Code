package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	arr := make([]int, n)
	x := 0
	for sc.Scan() {
		arr[x], _ = strconv.Atoi(sc.Text())
		x++
	}
	//fmt.Println(arr)
	t := 1
	next := arr[0]
	arr[0] = -1
	for next > 0 {
		t++
		next = arr[next-1]
		if next == 2 {
			fmt.Println(t)
			break
		}
		if next == -1 {
			fmt.Println(-1)
			break
		}

	}

}
