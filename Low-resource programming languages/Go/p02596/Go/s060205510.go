package main

import (
	"bufio"
	"fmt"
	_"math"
	"os"
    _ "sort"
	 "strconv"
	_ "strings"
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

func main() {
    sc.Split(bufio.ScanWords)
    K := nextInt()
    
    var seven string
    
    for i := 1; i < 1000; i++ {
        seven += "7"
        x, _ := strconv.Atoi(seven)
        if x%K == 0 {
            fmt.Println(i)
            break
        }
    }
}