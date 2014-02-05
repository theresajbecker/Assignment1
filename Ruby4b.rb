class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end


def rps_game_winner(game)

	raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError unless game[0][1].downcase.match(/[rsp]/) && game[1][1].downcase.match(/[rsp]/)
	
	gameHash = {"rr"=> game[0], "ss"=> game[0],"pp"=> game[0],"rs"=> game[0],"ps"=> game[1],"pr"=> game[0],
			"sr"=> game[1], "sp"=> game[0], "rp"=> game[1]}

	gameString = game[0][1].downcase + game[1][1].downcase
	
	return gameHash[gameString]
	
	
end

game01 = [ ["Armando", "s"], ["Dave", "p"]]
game02 = [["Theresa", "R"]]

p "rps game winer is" +rps_game_winner(game01).to_s

def	rps_tourn_winner(tournament)
	if tournament[0][0].is_a?(String)
		return rps_game_winner(tournament)
	else 
		rps_game_winner([ rps_tourn_winner(tournament[0]), rps_tourn_winner(tournament[1]) ])
	end #ends if
end #ends rpstourn
  tournament = [

    [
        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]

puts "rps tournament winner is " + rps_tourn_winner(tournament).to_s 
