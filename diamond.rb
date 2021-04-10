require "./diamond.rb"

# this enable this ruby script to be run from the command line
Diamond.new.main if __FILE__ == $PROGRAM_NAME

class Diamond
  def main
    puts "Running Main.new.main..."
    exp1(2, 2)
  end
  
  def exp1(level, border)
    no_of_stars = 1

    #pad the space
    (level -1).downto 1 do |no_of_spaces|
      no_of_spaces.times { print "-" }

      # print the no. of stars
      no_of_stars.times do
        print "*"
      end  
      no_of_stars = no_of_stars + 2  
      puts 
    end  
  end

end