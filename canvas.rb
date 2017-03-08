canvas=
    [[0,0,0,0,0,0,0],
     [1,1,1,0,1,0,0],
     [1,0,0,1,0,0,0],
     [1,0,0,1,0,0,0],
     [1,1,1,0,0,0,0]]

    $result = canvas
    p $result
    def fill(canvas, x, y, new_number)
        p x,y
        p '$$$$$$$$$$$$$$'
        find_left(canvas, x, y, new_number) if y!=0
        find_right(canvas, x, y, new_number) if y!=canvas[0].length-1
        find_top(canvas, x, y, new_number) if  x!=0
        find_bottom(canvas, x, y, new_number) if x!=canvas.length-1
    end

    def find_left(canvas, x, y, new_number)
        if $result[x][y-1] != new_number
            if canvas[x][y-1]==canvas[x][y]
                $result[x][y-1] = new_number
                find_left(canvas, x, y-1, new_number) if y!=0
                find_top(canvas, x, y-1, new_number) if  x!=0
                find_bottom(canvas, x, y-1, new_number) if x!=canvas.length-1
            end
        end
    end
    def find_right(canvas, x, y, new_number)
        p 'ece'
        if $result[x][y+1] != new_number
            if canvas[x][y+1]==canvas[x][y]
                $result[x][y+1] = new_number
                find_right(canvas, x, y+1, new_number) if y!=canvas[0].length-1
                find_top(canvas, x, y+1, new_number) if  x!=0
                find_bottom(canvas, x, y+1, new_number) if x!=canvas.length-1
            end
        end
    end
    def find_top(canvas, x, y, new_number)
        if $result[x-1][y] != new_number
            if canvas[x-1][y]==canvas[x][y]
                $result[x-1][y] = new_number
                find_left(canvas, x-1, y, new_number) if y!=0
                find_right(canvas, x-1, y, new_number) if y!=canvas[0].length-1
                find_top(canvas, x-1, y, new_number) if  x!=0
            end
        end
    end
    def find_bottom(canvas, x, y, new_number)
        if $result[x+1][y] != new_number

            if canvas[x+1][y]==canvas[x][y]
                $result[x+1][y] = new_number
                find_left(canvas, x, y+1, new_number) if y!=0
                find_right(canvas, x, y+1, new_number) if y!=canvas[0].length-1
                find_bottom(canvas, x, y+1, new_number) if x!=canvas.length-1
            end
        end
    end
    $result[0][0]=6
    fill(canvas,0,0,6)
    p $result
