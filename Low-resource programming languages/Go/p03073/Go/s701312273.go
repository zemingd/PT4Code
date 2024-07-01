package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	S := nextString()
	SS := make([]string, len(S))
	TOGGLE := map[string]string{"0": "1", "1": "0"}
	var ANS int
	if len(S) == 1 {
		fmt.Println(0)
		return
	} else if len(S) == 2 {
		if S[0:1] == S[1:2] {
			fmt.Println(1)
		} else {
			fmt.Println(0)
		}
		return
	}
	for i := 0; i < len(S); i++ {
		SS[i] = S[i : i+1]
	}
	for i := 2; i < len(S); i++ {
		if SS[i-2] == SS[i-1] && SS[i-1] == SS[i] {
			SS[i-1] = TOGGLE[SS[i-1]]
			ANS++
		} else if SS[i-2] == SS[i-1] && SS[i-1] != SS[i] {
			SS[i-2] = TOGGLE[SS[i-2]]
			ANS++
		} else if SS[i-2] != SS[i-1] && SS[i-1] == SS[i] {
			SS[i] = TOGGLE[SS[i]]
			ANS++
		}
	}
	fmt.Println(ANS)
}
