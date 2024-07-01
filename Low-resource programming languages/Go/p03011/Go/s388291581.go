package main

import ("fmt"
"sort"
)
func main(){
var p,q,r int
  fmt.Scanf("%d %d %d",&p,&q,&r)
  s:=[]int{p,q,r}
  sort.Ints(s)
  fmt.Println(s[0]+s[1])
}