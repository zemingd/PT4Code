package main
import "fmt"

func main(){
    var N,M int
    fmt.Scan(&N,&M)
    count := make([]int, M)
    for i:=0;i<N;i++ {
        var k int;
        fmt.Scan(&k)
        for j:=0;j<k;j++{
            var l int
            fmt.Scan(&l)
            count[l]++
        }
    }
    c := 0
    for i:=0;i<M;i++{
        if count[i] == N{
            c++
        }
    }
    fmt.Println(c)
}