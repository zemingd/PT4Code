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
	var i int64
	for i = 0; i < num; i++ {
		rtn = (rtn << 1) % mod
	}
	return rtn
}

func main() {
	N := getStdinInt64()
	hash1 := make(map[string]int64)
	hash2 := make(map[string]string)
	var zero int64 = 0
	var i int64
	for i = 0; i < N; i++ {
		list := getStdinIntArr64()
		A := list[0]
		B := list[1]
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
		if val1 == -1 {
			continue
		}
		var val2 int64 = hash1[hash2[idx]] // 仲の悪い相方
		var tmp1 int64 = (modPow2(val1) - 1) % mod
		var tmp2 int64 = (modPow2(val2) - 1) % mod
		var tmp3 int64 = 1
		hash1[idx] = -1 // 重複を避ける
		hash1[hash2[idx]] = -1
		ans = (ans * (tmp1 + tmp2 + tmp3)) % mod
	}
	if (ans + zero - 1) > 0 {
		ans = (ans + zero - 1) % mod
	} else {
		ans = (ans + zero + mod - 1) % mod
	}
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
func getStdinInt64() int64 {
	sc.Scan()
	rtn, _ := strconv.ParseInt(sc.Text(), 10, 64)
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
func getStdinIntArr64() []int64 {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}
