package main

import "fmt"

import "bufio"

import "os"

import "strconv"

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var count int
	var x []int
	for i := 0; i < n; i++ {
		x = append(x, nextInt())
	}
	// fmt.Println(x)

	for len := 0; len < n; len++ {
		flag := true
		BaseNumber := x[len]
		for j := 0; j < len; j++ {
			if BaseNumber > x[j] {
				flag = false
			}
		}
		if flag == true {
			count++
		}
		fmt.Println()
		fmt.Println(count)
	}
	fmt.Println()
	fmt.Println(count)
}
