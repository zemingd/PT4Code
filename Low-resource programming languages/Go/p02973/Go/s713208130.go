
package main

import (
	"fmt"
	"sort"
	"bufio"
	"strconv"
	"os"
	)

var (
	sc = bufio.NewScanner(os.Stdin)
)


func init() {
	sc.Split(bufio.ScanWords)
}
	
func main() {
	var n int
	fmt.Scan(&n)
	m:=make([]int,n)
	c:=make([]int,0,n)
	
	for i:=0;i<n;i++{
		sc.Scan()
		m[i], _ = strconv.Atoi(sc.Text())
	}
	
	for i:=0;i<n;i++{
		k := sort.Search(len(c), func(j int)bool{return c[j]<m[i]})
		if k == len(c){
			c= append(c,m[i])
		} else {
			c[i]=m[i]
		}
	}

	fmt.Println(len(c))
}