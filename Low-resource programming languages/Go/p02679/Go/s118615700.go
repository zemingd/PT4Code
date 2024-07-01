package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

var mod int64 = 1000000007

func modPow2(num int64) int64 {
	if num == 0 {
		return 1
	}

	var rtn int64
	rtn = 1
	for i := 0; int64(i) < num; i++ {
		rtn = (rtn << 1) % mod
	}
	return rtn
}

func main() {
	N := getStdinInt()
	hash1 := make(map[string]int64)
	hash2 := make(map[string]string)
	var zero int64 = 0
	for i := 0; i < N; i++ {
		list := getStdinIntArr()
		A := int64(list[0])
		B := int64(list[1])
		if A == 0 && B == 0 {
			zero++
		} else if B == 0 {
			hash1["1/0"]++
			hash2["1/0"] = "0/1"
		} else if A == 0 {
			hash1["0/1"]++
			hash2["0/1"] = "1/0"
		} else {
			rat1 := big.NewRat(A, B)
			rat2 := big.NewRat(-B, A)
			hash1[fmt.Sprint(rat1)]++
			hash2[fmt.Sprint(rat1)] = fmt.Sprint(rat2)
		}
	}

	var ans int64 = 1
	for idx, val1 := range hash1 {
		var val2 int64 = hash1[hash2[idx]]	// 仲の悪い相方
		var tmp1 int64 = (modPow2(val1) - 1) % mod
		var tmp2 int64 = (modPow2(val2) - 1) % mod
		var tmp3 int64 = 1
		hash1[idx] = 0			// 重複を避ける
		hash1[hash2[idx]] = 0
		ans = (ans * (tmp1 + tmp2 + tmp3)) % mod
	}
	ans = (ans + zero - 1) % mod
	fmt.Printf("%d", ans)

	fmt.Printf("\n")
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	sc.Scan()
	rtn, _ := strconv.Atoi(sc.Text())
	return rtn
}
func getStdinIntArr() []int {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
