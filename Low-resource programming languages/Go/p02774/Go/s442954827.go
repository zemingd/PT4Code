package main
import "fmt"
import "sort"
func main(){
    // Your code here!
    var n, m int
    fmt.Scan(&n, &m)
    t := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&t[i])
    }
    
    var tt []int
    for i := 0; i < len(t); i++{
        for k := 0; k < len(t); k++{
            if(i == k){
                continue
            }
            tt = append(tt, t[i] * t[k])
        }
    }
    sort.Ints(tt)
    fmt.Println(tt[m])
}