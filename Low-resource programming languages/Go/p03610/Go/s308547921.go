package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	// sc.Split(bufio.ScanWords)

	var slice string
	fmt.Scan(&slice)
	res := make([]string, len(slice)/2+1)

	// for i, s := range slice {
	// 	if (i+1)%2 == 0 {
	// 		continue
	// 	}
	// 	res = append(res, string(s))
	// }
	// fmt.Println(len(slice))
	for i := 0; i < len(slice); i += 2 {
		res = append(res, string(slice[i]))
	}

	fmt.Println(strings.Join(res, ""))
}
