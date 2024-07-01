package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"sort"
)

func fastGetInt(b []byte) int {
	neg := false
	if b[0] == '-' {
		neg = true
		b = b[1:]
	}
	n := 0
	for _, v := range b {
		n = n*10 + int(v-'0')
	}
	if neg {
		return -n
	}
	return n
}
func hasValue(val int, sl []int) bool {
	for x := 0; x < len(sl); x++ {
		if sl[x] == val {
			return true
		}
	}
	return false
}

//========== Implement Algorithm =======================
func solution(X int, p []int) int {
	sort.Ints(p)
	fullList := make([]int, 100-len(p))
	count := 0
	for i := 1; i < len(fullList); i++ {
		if !hasValue(i, p) {
			fullList[count] = i
			count++
		}

	}
	retVal := fullList[0]

	smallest := int(math.Abs(float64(X) - float64(fullList[0])))
	for x := 1; x < len(p); x++ {
		if smallest > int(math.Abs(float64(X)-float64(fullList[x]))) {
			retVal = fullList[x]
			smallest = int(math.Abs(float64(X) - float64(fullList[x])))
		}
	}
	return retVal
}

func main() {

	scanner := bufio.NewScanner(os.Stdin)

	//================== Variables used ====================
	var X, N, ret int
	//======================================================

	//============== Get return value from File ============
	if len(os.Args) >= 2 {

		file, err := os.Open(os.Args[1])
		if err != nil {
			log.Fatalf("failed opening file: %s", err)
		}
		scanner = bufio.NewScanner(file)
		defer file.Close()

	}
	scanner.Split(bufio.ScanWords)
	//======================= I/O ==========================
	scanner.Scan()
	X = fastGetInt(scanner.Bytes())
	scanner.Scan()
	N = fastGetInt(scanner.Bytes())
	p := make([]int, N)
	for x := 0; x < N; x++ {
		scanner.Scan()
		p[x] = fastGetInt(scanner.Bytes())
	}

	//======================================================
	ret = solution(X, p)
	//==================== OUTPUT ==========================
	fmt.Println(ret)
}
