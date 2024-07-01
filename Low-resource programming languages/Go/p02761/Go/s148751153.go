package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	digits, m := nextInt(), nextInt()
	var _digits int
	var num = make(map[int]int)
	for i := 0; i < m; i++ {
		rDigit, v := nextInt(), nextInt()
		if rDigit == 1 && v == 0 {
			fmt.Println(-1)
			return
		}
		if num[rDigit] == 0 || v < num[rDigit] {
			num[rDigit] = v
		}
		if _digits < rDigit {
			_digits = rDigit
		}
	}
	if digits < _digits {
		fmt.Println(-1)
		return
	}
	// 0の場合は、先頭は１、それ以外は0
	// n <= max S

	var ans int
	for i := 0; i < digits; i++ {
		d := digits - i
		v := num[i+1]
		if v == 0 && d == digits {
			ans += int(math.Pow(float64(10), float64(d-1)))
		} else {
			ans += v * int(math.Pow(float64(10), float64(d-1)))
		}
	}
	fmt.Println(ans)
}
