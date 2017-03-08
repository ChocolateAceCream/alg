canvas= [[0,0,0,0,0,0,0],
         [1,1,1,0,1,0,0],
         [1,0,0,1,0,0,0],
         [1,0,0,1,0,0,0],
         [1,1,1,0,0,0,0]]
$result=[]
$result = canvas.map do |e| e.dup end
p canvas
def fill(canvas, x, y, new_number)
    #find left
    if y!=0 && $result[x][y-1] != new_number
        if canvas[x][y]==canvas[x][y-1]
            $result[x][y-1]=new_number
            fill(canvas,x,y-1,new_number)
        end
    end
    #find right
    if y!=canvas[0].length-1 && $result[x][y+1] != new_number
        if canvas[x][y]==canvas[x][y+1]
            $result[x][y+1]=new_number
            fill(canvas,x,y+1,new_number)
        end
    end
    #find top
    if x!=0 && $result[x-1][y] != new_number
        if canvas[x][y]==canvas[x-1][y]
            $result[x-1][y]=new_number
            fill(canvas,x-1,y,new_number)
        end
    end
    #find bottom
    if x!=canvas.length-1 && $result[x+1][y] != new_number
        if canvas[x][y]==canvas[x+1][y]
            $result[x+1][y]=new_number
            fill(canvas,x+1,y,new_number)
        end
    end
end
$result[0][0]=6
fill(canvas,0,0,6)
p $result
