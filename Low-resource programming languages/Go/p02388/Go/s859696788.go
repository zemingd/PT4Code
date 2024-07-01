package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)

// 組み合わせの数
func main() {
	sc := bufio.NewScanner(os.Stdin)
		sc.Scan()
		ary := strings.Split(sc.Text(), " ")
		n, _ := strconv.Atoi(ary[0])
		fmt.Println(n * n * n)
}

