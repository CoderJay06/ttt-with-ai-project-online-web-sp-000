## Objectives
# 1. Build a command-line interface (CLI).
# 2. Create a domain model with multiple relating and collaborating objects.

class Game
  WIN_COMBINATIONS = [
     [0, 1, 2],
     [3, 4, 5],
     [6, 7, 8],
     [0, 3, 6],
     [1, 4, 7],
     [2, 5, 8],
     [0, 4, 8],
     [6, 4, 2]
   ]

   def board
     binding.pry 
   end
end
