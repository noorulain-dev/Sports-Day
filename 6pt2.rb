require './input_functions'
PLAYERS = 4

def input(teams, arrayb)

for x in 0..(teams-1)
arrayb[x] = Array.new(PLAYERS)

for y in 0..(PLAYERS-1)
puts "Team " + (x+1).to_s

arrayb[x][y] = read_integer("Enter scores for individual players #{y + 1}:")

end
end
end

def disp_arr(myarray, row, col)
   for x in 0..(row-1)
   
   print ("\nScores for each player of the team #{x+1}: \t")
   
   for y in 0..(col-1)
   print ((myarray[x][y]).to_s + "\t")
   
   end
   end
   end
   
def teamscore (arrayc)
   sum = 0
   for x in 0..(PLAYERS-1)
   sum=sum+arrayc[x]
   end
   return sum
   end
   
   def highscore(arrayd)
   
   highest_value = arrayd[0][1]
   for x in 0..(arrayd.length-1)
   for y in 0..((arrayd[x]).length-1)
   if (arrayd[x][y]> highest_value)
   highest_value = arrayd[x][y]
   end
   end
   end
   return highest_value
   end
   
   def main
   
   noteam = read_integer("How many teams?")
   arraya = Array.new(noteam)
   input(noteam, arraya)
   disp_arr(arraya, noteam, PLAYERS)
   array_total = Array.new(noteam)
   for x in 0..(noteam-1)
   array_total[x] = teamscore(arraya[x])
   puts "The total score of team #{x+1}: #{array_total[x]}"
   end
   
   highest_value = highscore(arraya)
   puts "The highest individual score recorded during the tournament: #{highest_value}"
   
   end
   main
   