// https://atcoder.jp/contests/abc123/tasks/abc123_b
package main

import "fmt"
import "bufio"
import "os"
import "strconv"
import "math"

var _sw = bufio.NewScanner(os.Stdin)

func main() {
	var t [5]int

	rem := -1

	for i := range t {
		t[i] = nextInt()
		if rem == -1 || (t[i]%10 != 0 && t[i]%10 < t[rem]%10) {
			rem = i
		}
	}

	ans := 0
	for i := range t {
		if i == rem {
			ans += t[i]
		} else {
			ans += int(math.Ceil(float64(t[i])/10)) * 10
		}
	}

	fmt.Println(ans)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func nextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
