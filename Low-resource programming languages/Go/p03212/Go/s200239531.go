package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var digits []int

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	var str string
	fmt.Sscanf(scanner.Text(), "%s", &str)
	ds := strings.Split(str, "")

	digits = make([]int, len(ds))
	for i, d := range ds {
		digits[i], _ = strconv.Atoi(d)
	}

	ans := 0
	for i := 0; i < len(digits); i++ {
		var r int
		if i == 0 {
			r = rec(i, false, false, false, true)
		} else {
			r = rec(i, false, false, false, false)
		}
		ans = ans + r
	}
	fmt.Println(ans)
}

func rec(index int, thr, fiv, sev bool, strict bool) int {
	if index == len(digits) {
		if thr && fiv && sev {
			return 1
		} else {
			return 0
		}
	}

	ret := 0
	if strict {
		if digits[index] > 7 {
			ret = ret +
				rec(index+1, true, fiv, sev, false) +
				rec(index+1, thr, true, sev, false) +
				rec(index+1, thr, fiv, true, false)
		} else if digits[index] == 7 {
			ret = ret +
				rec(index+1, true, fiv, sev, false) +
				rec(index+1, thr, true, sev, false) +
				rec(index+1, thr, fiv, true, true)
		} else if digits[index] > 5 {
			ret = ret +
				rec(index+1, true, fiv, sev, false) +
				rec(index+1, thr, true, sev, false)
		} else if digits[index] == 5 {
			ret = ret +
				rec(index+1, true, fiv, sev, false) +
				rec(index+1, thr, true, sev, true)
		} else if digits[index] > 3 {
			ret = ret +
				rec(index+1, true, fiv, sev, false)
		} else if digits[index] == 3 {
			ret = ret +
				rec(index+1, true, fiv, sev, true)
		}
	} else {
		ret = ret +
			rec(index+1, true, fiv, sev, false) +
			rec(index+1, thr, true, sev, false) +
			rec(index+1, thr, fiv, true, false)
	}

	return ret
}
