def print_board(rows_to_display)
    board = rows_to_display.map do |row|
        display_row = row.map do |cell|
            cell.nil? ? ' ' : cell
            # cell ? cell : ' '
            # cell or " "
            # cell || " "
        end
        display_row.join('|')
    end

    puts board.join("\n" + ('-' * 5) + "\n")
end