package main

//C - GCD on Blackboard

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//エラーが発生したときは勝手にpanicしろって関数にはmustって名前を付ける慣例
func mustParseInt(text string) int {
	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}

func GCDRemainder(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func GCDEuclidean(a, b int) int {
	for a != b {
		if a > b {
			a -= b
		} else {
			b -= a
		}
	}

	return a
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	var line string
	scanner.Scan()

	line = scanner.Text()
	n := mustParseInt(line)

	scanner.Scan()
	line = scanner.Text()
	num_str_array := strings.Split(line, " ")
	num_int_array := make([]int, n)
	for i, v := range num_str_array {
		num_int_array[i], _ = strconv.Atoi(v)
	}

	//num_int_array内の1つの要素以外でGCDを計算する。その1つの要素をfor文で変えていく
	ans := 0
	values := make([]int, n)
	for i := 0; i < n; i++ {
		values_1 := make([]int, n-1)
		copy(values, num_int_array)
		values_1 = append(values[:i], values[i+1:]...) //結合したい
		//		fmt.Println(values_1)

		z := values_1[0]
		for _, n := range values_1 {
			z = GCDEuclidean(n, z)
		}
		//		fmt.Println(z) //GCD
		if z > ans {
			ans = z
		}
	}
	fmt.Println(ans)
}

// TLEでした...。ACかTLE.
