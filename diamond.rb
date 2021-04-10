require "./diamond.rb"

# this enable this ruby script to be run from the command line
Diamond.new.main if __FILE__ == $PROGRAM_NAME

class Diamond
  def main
    puts "Running Main.new.main..."
    exp1(3, 1)
  end
  
  def exp1(level, border)
    level_count = 1
    no_of_stars = 1

    #pad the space
    (level -1).downto 1 do |no_of_spaces|
      no_of_spaces.times { print "-" }

      if level_count < border + 1
        no_of_stars.times do
          print "*"
        end
      else
        no_of_stars.times do |star_counter|
          if (star_counter >= (no_of_stars -border)) or (star_counter < border)
            print "*"
          else
            print " "
          end  
        end  
      end   
       
      no_of_stars = no_of_stars + 2  
      level_count = level_count + 1

      puts
    end  
  end

end