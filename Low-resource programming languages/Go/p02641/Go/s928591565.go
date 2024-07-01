package main

import (
        "fmt"
)
func abs(x int) int{
        if x>0{
                return x
        }
        return -x
}
func main(){
        var n,x int
        var l [102]bool
        fmt.Scanf("%d %d",&n,&x)
        for i := 0;i<x;i++ {
                var v int
                fmt.Scanf("%d",&v)
                l[v]=true
        }
        ans := 0
        pos := 1000
        for i := range l{
                if (!l[i] && abs(n-i)< pos){
                        ans = i
                        pos = abs(n-i)
                }
        }
        fmt.Println(ans)
}