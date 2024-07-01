package main
import (
    "fmt"
    "sort"
)

type Cakes struct{
    Cake []int
}

func main(){
    var input [4]int
    for i:=0;i<4;i++{
        fmt.Scan(&input[i])
    }
    var cakes [3]Cakes
    for i:=0;i<3;i++{
        for j, cake:=0, 0;j<input[i];j++{
            fmt.Scan(&cake)
            cakes[i].Cake = append(cakes[i].Cake, cake)
        }
        sort.Sort(sort.Reverse(sort.IntSlice(cakes[i].Cake)))
    }
    
    ans := []int{}
    for i:=0;i<input[0];i++{
        for j:=0;j<input[1];j++{
            for k:=0;k<input[2] && i+j+k < input[3];k++{
                ans = append(ans, cakes[0].Cake[i]+cakes[1].Cake[j]+cakes[2].Cake[k])  
            }
        }
    }
    sort.Sort(sort.Reverse(sort.IntSlice(ans)))
    for i:=0;i<input[3];i++{
        fmt.Println(ans[i])
    }
}
