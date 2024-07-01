package main
import (
    "fmt"
    "sort"
)

func main(){
    var x, y, z, K int
    fmt.Scan(&x, &y, &z, &K)
    
    var one, two ,three []int
    for i, cake:=0, 0;i<x;i++{
        fmt.Scan(&cake)
        one = append(one, cake)
    }
    for i, cake:=0, 0;i<y;i++{
        fmt.Scan(&cake)
        for j:=0;j<x;j++{
            two = append(two, cake+one[j])
        }
    }
    sort.Sort(sort.Reverse(sort.IntSlice(two)))
    for i, cake:=0, 0;i<z;i++{
        fmt.Scan(&cake)
        for j:=0;j<K&&j<x*y;j++{
            three = append(three, cake+two[j])
        }
        
    }
    sort.Sort(sort.Reverse(sort.IntSlice(three)))
    for i:=0;i<K;i++{
        fmt.Println(three[i])
    }
    
}
