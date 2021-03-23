def winner?(rows)
    for row in rows
        return row.first if winning_row?(row) 
    end

    for row in rows.transpose
        return row.first if winning_row?(row)
    end
    # Check for diagonals
    # 1. Create an array of two arrays
    # 2. Check each with `winning_row?`    
    tmp = [[],[]]
    for row in (0..2)
        tmp[0].push(rows[row][row])
        tmp[1].push(rows[row][row])
    end 
    for tmp_row in tmp
        return tmp_row.first if winning_row?(row)
    end



    false
end

def draw?(rows)
    rows.flatten.compact.length == 9
end

def winning_row?(row)
    compacted_length = row.compact.length
    unique_length = row.uniq.length
    (compacted_length == 3) && (unique_length == 1)
end

=begin
Another way:
def winner?(rows)
    for row in rows
        return row.first if winning_row?(row) 
    end

    for row in rows.transpose
        return row.first if winning_row?(row)
    end

    for row in diagonal_rows(rows)
        return row.first if winning_row?(row)
    end
    
    false
end

def draw?(rows)
    rows.flatten.compact.length == 9
end

def winning_row?(row)
    compacted_length = row.compact.length
    unique_length = row.uniq.length
    (compacted_length == 3) && (unique_length == 1)
end

def diagonal_rows(rows)
    diagonal_rows = []

    diagonal_rows << (0..2).inject([]) do |row, idx|
        row << rows[idx][idx]
    end

    reversed_rows = rows.map { |row| row.reverse }
    diagonal_rows << (0..2).inject([]) do |row, idx|
        row << reversed_rows[idx][idx]
    end

    # Last expression in a method is its return value
    diagonal_rows
end
=end
