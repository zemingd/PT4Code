package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
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
	n := nextInt()
	var a,b,c []int
	a = make([]int, n + 1)
	b = make([]int, n + 1)
	c = make([]int, n + 1)
	
    for i := 1; i <= n; i++ {
        a[i] = nextInt()
    }
    for i := 1; i <= n; i++ {
        b[i] = nextInt()
    }
    for i := 1; i <= n - 1; i++ {
        c[i] = nextInt()
    }

	score := 0

	for i := 1; i <= n; i++ {
		score += b[a[i]]
		//fmt.Println(b[a[i]])
		if i > 0 && a[i] == (a[i-1] + 1) {
			score += c[a[i-1]]
			//fmt.Println(c[a[i]])
		}
	}

    fmt.Println(score)
}