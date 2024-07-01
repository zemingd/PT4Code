package main
import(
  "fmt"
  "sort"
)
 func main(){
   var n, l, i int 
   var ans string
   fmt.Scan(&n, &l)
   s:=make([]string, n)
   for i=0;i<n;i++{
     fmt.Scan(&s[i])
   }
   sort.Sort(sort.StringSlice(s))
   for i=0;i<n;i++{
     ans+=s[i]
   }
   fmt.Println(ans)
 }