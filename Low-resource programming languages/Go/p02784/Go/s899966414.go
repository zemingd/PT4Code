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
	h := nextInt()
	n := nextInt()
	//必殺技を1回ずつ使った時に与えるダメージの総和vsモンスターの体力
	sum := 0
	for i := 0; i < n; i++ {
		sum += nextInt()
	}
	if sum < h {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}