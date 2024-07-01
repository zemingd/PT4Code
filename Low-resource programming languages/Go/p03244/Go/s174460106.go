package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := nextInt()
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		vs[i] = nextInt()
	}

	os, es := make([]int, 0, n/2), make([]int, 0, n/2)
	for i, v := range vs {
		if i%2 == 0 {
			es = append(es, v)
		} else {
			os = append(os, v)
		}
	}

	oMap := count(os)
	eMap := count(es)

	oMaxVal, oMaxCnt := maxAndValue(oMap)
	eMaxVal, eMaxCnt := maxAndValue(eMap)

	if oMaxVal == eMaxVal {
		if oMaxCnt > eMaxCnt {
			eMap[eMaxVal] = 0
			eMaxVal, eMaxCnt = maxAndValue(eMap)
		} else {
			oMap[oMaxVal] = 0
			oMaxVal, oMaxCnt = maxAndValue(oMap)
		}
	}

	fmt.Println(n - (oMaxCnt + eMaxCnt))

	fmt.Println(oMap)
	fmt.Println(eMap)

}

func maxAndValue(cntMap map[int]int) (int, int) {
	var maxVal, maxCnt int
	for val, cnt := range cntMap {
		if max(maxCnt, cnt) == cnt {
			maxCnt = cnt
			maxVal = val
		}
	}

	return maxVal, maxCnt
}

func count(nums []int) map[int]int {
	cntMap := map[int]int{}
	for _, num := range nums {
		cntMap[num]++
	}

	return cntMap
}

// Input. ----------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func nextString() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}

	return sc.Text()
}

// ---------- Input.

// Util. ----------

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

// ---------- Util.
