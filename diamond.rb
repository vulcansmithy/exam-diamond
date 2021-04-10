require "./diamond.rb"

# this enable this ruby script to be run from the command line
Diamond.new.main if __FILE__ == $PROGRAM_NAME

class Diamond
  
  def initialize
    @no_of_stars = 1
    @level_count = 1
  end
    
  
  def main
    
    level  = 10
    border = 4
    
    puts
    puts "level=#{level} border=#{border}"
    puts 
    
       top_part(level, border)
    middle_part(level, border)
    bottom_part(level, border)
  end
  
  def top_part(level, border)
    #pad the space
    (level -1).downto 1 do |no_of_spaces|
      no_of_spaces.times { print "-" }

      if @level_count < border + 1
        @no_of_stars.times do
          print "*"
        end
      else
        @no_of_stars.times do |star_counter|
          if print_border?(star_counter, @no_of_stars, border)
            print "*"
          else
            print "-"
          end  
        end  
      end   
      puts
       
      @no_of_stars = @no_of_stars + 2  
      @level_count = @level_count + 1
    end  
  end
  
  def middle_part(level, border)
    @no_of_stars.times do |star_counter|
      if print_border?(star_counter, @no_of_stars, border)
        print "*"
      else
        print "-"
      end 
    end
    puts
  end
      
  def print_border?(star_index, no_of_stars, border_size)
    (star_index >= (no_of_stars -border_size)) or (star_index < border_size) ? true : false
  end
  
  def bottom_part(level, border)
    for no_of_spaces in 1..(level - 1) do
      @no_of_stars = @no_of_stars - 2 
      @level_count = @level_count - 1

      no_of_spaces.times { print "-" }
      
      if @level_count < border + 1
        @no_of_stars.times do
          print "*"
        end
      else
        @no_of_stars.times do |star_counter|
          if print_border?(star_counter, @no_of_stars, border)
            print "*"
          else
            print "-"
          end  
        end  
      end      
      puts
    end
  end
end