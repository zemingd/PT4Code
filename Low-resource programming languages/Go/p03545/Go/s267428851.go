package main

import (
	"fmt"
)

func main() {
	var in string
	fmt.Scan(&in)
	fmt.Println(op(in))
}

func op(in string) string {
	ii := make([]int, 4)
	for i, v := range in {
		ii[i] = int(v - '0')
	}
	var s string
	if ii[0]+ii[1]+ii[2]+ii[3] == 7 {
		s = "%v+%v+%v+%v=7"
	} else if ii[0]+ii[1]+ii[2]-ii[3] == 7 {
		s = "%v+%v+%v-%v=7"
	} else if ii[0]+ii[1]-ii[2]+ii[3] == 7 {
		s = "%v+%v-%v+%v=7"
	} else if ii[0]-ii[1]+ii[2]+ii[3] == 7 {
		s = "%v-%v+%v+%v=7"
	} else if ii[0]-ii[1]-ii[2]+ii[3] == 7 {
		s = "%v-%v-%v+%v=7"
	} else if ii[0]+ii[1]-ii[2]-ii[3] == 7 {
		s = "%v+%v-%v-%v=7"
	} else if ii[0]-ii[1]+ii[2]-ii[3] == 7 {
		s = "%v-%v+%v-%v=7"
	} else if ii[0]-ii[1]-ii[2]-ii[3] == 7 {
		s = "%v-%v-%v-%v=7"
	}
	return fmt.Sprintf(s, ii[0], ii[1], ii[2], ii[3])
}
