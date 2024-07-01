package main

import(
	"fmt"
)

type point struct {
	closestWall  [4]int
}

const MAX=2000

func main(){
	var(
		h,w int
		grid [4][MAX+2][MAX+2]int
	)
	fmt.Scanln(&h,&w)
	for i,s:=0,"";i<h;i++{
		fmt.Scanln(&s)
		for j:=0;j<w;j++{
			if s[j]=='#'{
				for k:=0;k<4;k++{
					grid[k][i+1][j+1]=-1
				}
			}
		}
	}
	for k:=0;k<4;k++{
		for i:=0;i<h+2;i++{
			grid[k][i][0]=-1
			grid[k][i][w+1]=-1
		}
		for j:=0;j<w+2;j++{
			grid[k][0][j]=-1
			grid[k][h+1][j]=-1			
		}
	}

	for i:=1;i<h+1;i++{
		//left
		for j,cur:=1,1;j<w+1;j++{
			if grid[0][i][j]==0{
				grid[0][i][j]=cur
			} else {
				cur=j+1
			}
		}
		//right
		for j,cur:=w,w;j>0;j--{
			if grid[1][i][j]==0{
				grid[1][i][j]=cur
			} else {
				cur=j-1
			}
		}
	}

	
	for j:=1;j<w+1;j++{
		//up
		for i,cur:=1,1;i<h+1;i++{
			if grid[2][i][j]==0{
				grid[2][i][j]=cur
			} else {
				cur=i+1
			}
		}
		//down
		for i,cur:=h,h;i>0;i--{
			if grid[3][i][j]==0{
				grid[3][i][j]=cur
			} else {
				cur=i-1
			}
		}		
	}

	max:=0
	for i:=1;i<h+1;i++{
		for j:=1;j<w+1;j++{
			if sum:=1;grid[0][i][j]>0{
				sum+=j-grid[0][i][j]
				sum+=grid[1][i][j]-j
				sum+=i-grid[2][i][j]
				sum+=grid[3][i][j]-i

				if max<sum{
					max=sum
				}
			}
		}
	}

	fmt.Println(max)
}