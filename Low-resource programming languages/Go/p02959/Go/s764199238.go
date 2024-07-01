package main
import "fmt"


func main(){
        var N int
        var monsters, killers []int
        fmt.Scan( &N )
        for i := 0; i <= N; i ++{
                var monster int
                fmt.Scan( &monster )
                monsters = append( monsters, monster )
        }

        for i := 0; i < N; i ++{
                var killer int
                fmt.Scan( &killer )
                killers = append( killers, killer )
        }
        ret := 0
        prev_remain_killer := 0
        for i := 0; i < len( killers ); i ++ {
                monster_remain := monsters[ i ] - prev_remain_killer

                if monster_remain > 0{
                        monster_remain -=  killers[ i ]
                        if monster_remain <= 0{
                                prev_remain_killer = -monster_remain
                                monster_remain = 0
                        }else{
                                prev_remain_killer = 0
                        }
                }else{
                        prev_remain_killer = killers[ i ]
                        monster_remain = 0
                }
                ret += monsters[ i ] - monster_remain
        }

        last :=  prev_remain_killer

        if monsters[ len(monsters)-1 ] < prev_remain_killer{
                last = monsters[ len(monsters)-1 ]
        }

        fmt.Println( ret + last )
}
