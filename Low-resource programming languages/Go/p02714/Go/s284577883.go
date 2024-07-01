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

func check(a,b,c string) bool{
     return (a != b) && (b != c) && (c != a)
}

func main() {
     sc.Split(bufio.ScanWords)
     n := nextInt()
     s := nextLine()
     
     cs := strings.Split(s,"")
     ans := 0
     
     for i:=0; i<n; i++{
     	 for j:=i+1; j<n; j++{
	     for k:=j+1; k<n; k++{
	     	 if !(j-i == k-j){
		    if check(cs[i],cs[j],cs[k]){
		       ans++
		    }
		 }
	     }
	 }
     }
     fmt.Println(ans)
}  