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
	k := nextInt()
	a := nextInt()
	b := nextInt()
	ans := "NG"

	for i:=1; k*i<=b; i++{
		if k*i >= a {
			ans = "OK"
		}
	}

	fmt.Println(ans)
}  	 
