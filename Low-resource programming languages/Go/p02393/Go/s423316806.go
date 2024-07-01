package main
import ("fmt"
        "sort"
)

func main(){
    var a, b, c int
    fmt.Scan(&a,&b,&c)
    three :=[]int{a,b,c}
    sort.Ints(three)
    fmt.Println(three[0], three[1], three[2])
}
