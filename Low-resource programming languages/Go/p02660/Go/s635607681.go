package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func main() {
	N := getStdinInt64()
	Nori := N
	arr := make([]bool, int(math.Sqrt(float64(N)))+1)

	// 初期化
	for i := 2; i < len(arr); i++ {
		arr[i] = true
	}
	// 素数を求める
	arr[0] = false
	arr[1] = false
	for i := 2; i < len(arr); i++ {
		if arr[i] {
			for j := i * 2; j < len(arr); j += i {
				arr[j] = false
			}
		}
	}
	// 割り切れるか判別（素因数分解）
	cnt := 0
	var i int64
	for i = 2; int(i) < len(arr); i++ {
		if arr[i] && (N%i) == 0 {
			mul := i
			pow := 1
			for {
				if N%mul == 0 {
					cnt++
					N /= mul
					pow++
					mul = 1
					for n := 0; n < pow; n++ {
						mul *= i
					}
				} else {
					break
				}
			}
			if N <= 1 {
				break
			}
		}
	}
	if N > 1 && int(N) > len(arr) {
		cnt++
	}

	if cnt == 0 && (Nori == 0 || Nori == 1) {
		fmt.Printf("%d\n", 0)
	} else if cnt == 0 {
		fmt.Printf("1\n")
	} else {
		fmt.Printf("%d\n", cnt)
	}
}

func getStdin() string {
	return readLine()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinInt64() int64 {
	str := getStdin()
	rtn, _ := strconv.ParseInt(str, 10, 64)
	return rtn
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}

func getStdinIntArr64() []int64 {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}

func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, e := sc.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
