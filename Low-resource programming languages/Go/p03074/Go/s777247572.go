package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

//•*¨*•.¸¸♪I/O•*¨*•.¸¸♪

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanInt64() int64 {
	sc.Scan()
	a,_ := strconv.ParseInt(sc.Text(),10,64)
	return a
}

func scanFloat64() float64 {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return float64(a)
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a ...int) {
	for i, e := range a {
		fmt.Fprint(wr, e)
		if i != len(a)-1 { fmt.Fprint(wr, " ") }
	}
	fmt.Fprintln(wr)
	wr.Flush()
}

//•*¨*•.¸¸♪Main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 100000000)

	n := scanInt()
	k := scanInt()
	s := scanText()

	cnt := make([][]int, 2)

	pre := 1
	c := 0

	for i := 0; i < n; i++ {
		num, _ := strconv.Atoi(string(s[i]))
		if pre != num {
			cnt[pre] = append(cnt[pre], c)
			c = 1
		} else {
			c++
		}
		pre = num
	}
	cnt[pre] = append(cnt[pre], c)

	sum := cnt[1][0]
	c = 0

	p := 0
	if len(cnt[0]) == len(cnt[1]) {
		cnt[1] = append(cnt[1], 0)
	}

	ans := sum

	for i := 0; i < len(cnt[0]); i++ {
		sum += cnt[0][i]+cnt[1][i+1]
		c++

		if c>k {
			sum -= cnt[0][p]+cnt[1][p]
			p++
			c--
		}

		if sum>ans {
			ans = sum
		}
		// fmt.Println(sum,c,cnt[0][i],cnt[1][i+1])
	}

	fmt.Println(ans)
}
