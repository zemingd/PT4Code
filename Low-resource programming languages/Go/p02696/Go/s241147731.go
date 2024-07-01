package main
import."fmt"
// github.com/EndlessCheng/codeforces-go
func main() {
var a,b,n int
Scan(&a,&b,&n)
if n>=b{n=b-1}
Print(a*n/b-a*(n/b))
}