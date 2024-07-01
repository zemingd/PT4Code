package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var ans int

func main() {
	sc.Split(bufio.ScanWords)
	a := make([]int, 9)
	for i := 0; i < 9; i++ {
		a[i], _ = strconv.Atoi(stringLineScan())
	}
	n, _ := strconv.Atoi(stringLineScan())
	t := make([]bool, 9)
	for i := 0; i < n; i++ {
		b, _ := strconv.Atoi(stringLineScan())
		for j := 0; j < 9; j++ {
			if a[j] == b {
				t[j] = true
			}
		}
	}
	if t[0] == true && t[1] == true && t[2] == true {
		fmt.Println("Yes")
	} else if t[3] == true && t[4] == true && t[5] == true {
		fmt.Println("Yes")
	} else if t[6] == true && t[7] == true && t[8] == true {
		fmt.Println("Yes")
	} else if t[0] == true && t[3] == true && t[6] == true {
		fmt.Println("Yes")
	} else if t[1] == true && t[4] == true && t[7] == true {
		fmt.Println("Yes")
	} else if t[2] == true && t[5] == true && t[8] == true {
		fmt.Println("Yes")
	} else if t[0] == true && t[4] == true && t[8] == true {
		fmt.Println("Yes")
	} else if t[2] == true && t[4] == true && t[6] == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
