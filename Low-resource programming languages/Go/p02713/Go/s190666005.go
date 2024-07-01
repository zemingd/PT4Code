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

func gcd(a, b int) int{
     if b == 0 {
     	return a
     } else {
        return gcd(b, a % b)
     }
}

func gcd3(a, b, c int) int{
     return gcd(a, gcd(b, c))
}

func main() {
     sc.Split(bufio.ScanWords)
     n := nextInt()

     ans := 0

     for i := 1; i <= n; i++{
     	 ans += i
     }

     for i := 1; i <= n; i++{
     	 for j := i+1; j <= n; j++{
	     ans += 6 * gcd(i,j)
	 }
     }

     for i := 1; i <= n; i++{
     	 for j := i+1; j <= n; j++{
	     for k := j+1; k <= n; k++{
	     	 ans += 6 * gcd3(i,j,k)
	     }
	 }
     }

     fmt.Println(ans)
}  