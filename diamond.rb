require "./diamond.rb"

# this enable this ruby script to be run from the command line
Diamond.new.main if __FILE__ == $PROGRAM_NAME

class Diamond

  def main
    puts "Running Main.new.main..."
    exp1(level=5, border=4)
  end
  
  def exp1(level, border)
    #pad the space
    (level -1).downto 1 do |i|
      i.times do
        print "-"
      end
      puts "x"  
    end  
  end

end