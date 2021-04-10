require "./diamond.rb"

# this enable this ruby script to be run from the command line
Diamond.new.main if __FILE__ == $PROGRAM_NAME

class Diamond
  
  SPACE = "-"

  def main
    puts "Running Main.new.main..."
    exp1(level=5, border=4)
  end
  
  def exp1(level, border)
    #pad the space
    (level -1).downto 1 do |no_of_spaces|
      no_of_spaces.times { print SPACE }
      puts "x"  
    end  
  end

end