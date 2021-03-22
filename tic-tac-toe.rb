require "./print_board"
require "./player_move"
require "./winner"

rows = [
    [nil, nil, nil],
    [nil, nil, nil],
    [nil, nil, nil]
]

winner = nil

# -- Game
print_board(rows)

['x', 'o'].cycle do |player|
    player_move(rows, player)
    print_board(rows)
    break if (winner = winner?(rows)) || draw?(rows)
end 

if winner
    puts "#{winner} is the winner!"
else
    puts "a draw :("
end
# -- Finish