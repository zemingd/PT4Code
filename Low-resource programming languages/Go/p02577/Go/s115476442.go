package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()

	n := nextStr()
	sum := 0
	for i := 0; i < len(n); i++ {
		sum += int(n[i] - '0')
	}

	if sum%9 != 0 {
		fmt.Println("No")
		return
	} else {
		fmt.Println("Yes")
		return
	}
}

// 各桁の和
func sumKeta(n int) int {
	keta := 0
	for n > 0 {
		keta += n % 10
		n /= 10
	}
	return keta
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
