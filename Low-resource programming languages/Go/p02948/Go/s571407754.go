package main
import "fmt"
import "sort"
// import "strings"                                                                                                                                                                                                                                                                                                                                                                          
//import "math"                                                                                                                                                                                                                                                                                                                                                                              
// import "strconv"                                                                                                                                                                                                                                                                                                                                                                          


type Shift struct{
        Day int
        Reward int
}

func unset(s []Shift, i int) []Shift {
    if i >= len(s) {
        return s
    }
    return append(s[:i], s[i+1:]...)
}

func main(){

        var N, xday int
        //var salary_day, rewards []int                                                                                                                                                                                                                                                                                                                                                      

        fmt.Scan( &N )
        fmt.Scan( &xday )


        var l []Shift
        for i := 0; i < N; i ++ {
                var v1, v2 int
                fmt.Scan( &v1 )
                fmt.Scan( &v2 )

                // salary_day = append( salary_day, v1 )                                                                                                                                                                                                                                                                                                                                     
                // rewards = append( rewards, v2 )                                                                                                                                                                                                                                                                                                                                           
                l = append( l, Shift{ Day: v1, Reward: v2 } )

                // m := make( map[ int ]int )                                                                                                                                                                                                                                                                                                                                                
                // m[ v1 ] = v2                                                                                                                                                                                                                                                                                                                                                              
                // l = append( l, m )                                                                                                                                                                                                                                                                                                                                                        
        }
        //sort.Ints( salary_day )                                                                                                                                                                                                                                                                                                                                                            
        sort.Slice( l, func( i, j int )bool{ return l[i].Day < l[j].Day } )
        // fmt.Println( l )                                                                                                                                                                                                                                                                                                                                                                  
        ret := 0
        for i := 1; i <= xday; i ++ {
                idx := -1
                maxv:= -1
                for j, shift := range l{
                        if shift.Day <= i{
                                if maxv < shift.Reward{
                                        maxv = shift.Reward
                                        idx = j
                                }
                        }else{
                                break
                        }
                }
                if idx != -1{
                        ret += maxv
                        l = unset( l, idx )
                }
        }
        fmt.Println( ret )
}